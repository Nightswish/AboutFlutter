import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/project.dart';

/// ProjectsNotifier: 비동기 리스트를 관리 (로딩/데이터/에러 상태를 AsyncValue로 표현)
class ProjectsNotifier extends StateNotifier<AsyncValue<List<Project>>> {
  ProjectsNotifier() : super(const AsyncValue.loading()) {
    fetchProjects();
  }

  Future<void> fetchProjects() async {
    try {
      // 예시: 로컬 JSON 또는 API 호출
      // final res = await http.get(Uri.parse('https://example.com/projects.json'));
      // final list = jsonDecode(res.body) as List;
      // state = AsyncValue.data(list.map((e)=>Project.fromJson(e)).toList());

      // 데모용: 500ms 지연 후 더미 데이터
      await Future.delayed(const Duration(milliseconds: 500));
      final list = List.generate(
        5,
        (i) => Project(
          id: 'p$i',
          title: 'Project #$i',
          description: 'Sample project description $i',
          imageUrl: '',
        ),
      );
      state = AsyncValue.data(list);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> refresh() async => fetchProjects();
}

final projectsProvider =
    StateNotifierProvider<ProjectsNotifier, AsyncValue<List<Project>>>((ref) {
  return ProjectsNotifier();
});

///설명(한글): ProjectsNotifier는 앱 시작 시 fetchProjects()를 호출해 데이터를 가져오고, UI는 ref.watch(projectsProvider)로 AsyncValue를 받아 when()으로 로딩/성공/에러를 처리합니다.
/// 실제 API를 쓰면 http.get 부분을 대체하세요.