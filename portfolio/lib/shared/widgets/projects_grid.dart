// lib/widgets/projects_grid.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/responsive.dart';
import 'package:portfolio/core/providers/projects_provider.dart';
import 'package:portfolio/core/models/project.dart';
// 애니메이션 위젯
import 'package:portfolio/shared/animations/entrance_animations.dart';

/// ProjectsGrid
/// - 프로젝트 리스트를 GridView 형태로 보여주는 위젯
/// - Riverpod Provider를 통해 비동기 상태 관리
/// - Responsive 헬퍼로 반응형 레이아웃 지원
/// - StaggeredEntrance 애니메이션 적용
class ProjectsGrid extends ConsumerWidget {
  const ProjectsGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 프로젝트 리스트 AsyncValue (loading, error, data)
    final projectsAsync = ref.watch(projectsProvider);

    return projectsAsync.when(
      // 로딩 상태 → 로딩 인디케이터
      loading: () => const Center(child: CircularProgressIndicator()),
      // 에러 상태 → 에러 메시지 표시
      error: (err, stack) => Center(child: Text('Error: $err')),
      // 데이터 상태 → GridView로 렌더링
      data: (projects) => Padding(
        padding: Responsive.edgeInsetsAll(context), // 화면 크기에 맞는 여백
        child: GridView.builder(
          shrinkWrap: true, // GridView를 내부에서만 스크롤
          physics: const NeverScrollableScrollPhysics(), // 부모 스크롤에 종속
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.value<int>(
              context: context,
              mobile: 1, // 모바일: 1열
              tablet: 2, // 태블릿: 2열
              desktop: 3, // 데스크탑: 3열
              largeDesktop: 4, // 대형 화면: 4열
              fallback: 1, // fallback (기본값)
            ),
            crossAxisSpacing: 16, // 열 간격
            mainAxisSpacing: 16, // 행 간격
            childAspectRatio: 4 / 3, // 카드 비율
          ),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];

            // ✅ StaggeredEntrance: 각 카드에 순차적 애니메이션 적용
            return StaggeredEntrance(
              index: index,
              child: _ProjectCard(project: project),
            );
          },
        ),
      ),
    );
  }
}

/// 단일 프로젝트를 카드 형태로 표시하는 위젯
class _ProjectCard extends StatelessWidget {
  final Project project;
  const _ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // 카드 경계 밖 내용 자르기
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ), // 둥근 모서리
      elevation: 4, // 그림자
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 프로젝트 이미지가 있으면 상단에 표시
          if (project.imageUrl.isNotEmpty)
            Expanded(
              child: Image.network(
                project.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          // 제목 + 설명
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 프로젝트 제목 (headline 스타일 적용)
                Text(
                  project.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                // 프로젝트 설명 (body 스타일 적용)
                Text(
                  project.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
