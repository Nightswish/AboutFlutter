// lib/presentation/privacy_policy_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers/projects_provider.dart';
import '../../shared/widgets/projects_grid.dart';
import '../shared/animations/entrance_animations.dart';

class PrivacyPolicyPage extends ConsumerWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final source = ref.watch(dataSourceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        actions: [
          // ✅ 토글 버튼
          IconButton(
            icon: Icon(
              source == DataSource.rest ? Icons.cloud_outlined : Icons.storage,
            ),
            tooltip: source == DataSource.rest
                ? 'Using REST API'
                : 'Using Firestore',
            onPressed: () {
              // REST ↔ Firestore 전환
              final newSource = source == DataSource.rest
                  ? DataSource.firestore
                  : DataSource.rest;
              ref.read(dataSourceProvider.notifier).state = newSource;

              // 새로고침
              ref.read(projectsProvider.notifier).refresh();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeIn(
              delay: const Duration(milliseconds: 100),
              child: Text(
                '개인정보 처리방침',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(height: 16),
            FadeIn(
              delay: const Duration(milliseconds: 200),
              child: Text(
                '이 페이지는 예시입니다. 실제 개인정보 처리방침 내용을 넣어야 합니다.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 32),
            FadeIn(
              delay: const Duration(milliseconds: 300),
              child: Text(
                '관련 프로젝트',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 16),
            const ProjectsGrid(), // ✅ 데이터 소스에 따라 자동 변경
          ],
        ),
      ),
    );
  }
}
