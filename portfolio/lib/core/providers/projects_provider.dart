import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/project.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

/// 데이터 소스 종류 정의
enum DataSource { rest, firestore }

/// 현재 선택된 데이터 소스 (기본값: REST)
final dataSourceProvider = StateProvider<DataSource>((ref) => DataSource.rest);


/// ProjectsNotifier: 비동기 리스트를 관리 (로딩/데이터/에러 상태를 AsyncValue로 표현)
class ProjectsNotifier extends StateNotifier<AsyncValue<List<Project>>> {
  final Ref ref;

  ProjectsNotifier(this.ref) : super(const AsyncValue.loading()) {
    fetchProjects();
  }

  Future<void> fetchProjects() async {
    final source = ref.read(dataSourceProvider);
    try {
      // 예시: 로컬 JSON 또는 API 호출
      // final res = await http.get(Uri.parse('https://example.com/projects.json'));
      // final list = jsonDecode(res.body) as List;
      // state = AsyncValue.data(list.map((e)=>Project.fromJson(e)).toList());

      // 데모용: 500ms 지연 후 더미 데이터
      // await Future.delayed(const Duration(milliseconds: 500));
      // final list = List.generate(
      //   5,
      //   (i) => Project(
      //     id: 'p$i',
      //     title: 'Project #$i',
      //     description: 'Sample project description $i',
      //     imageUrl: '',
      //   ),
      // );
      // state = AsyncValue.data(list);

      if (source == DataSource.rest) {
        // ✅ REST API
        final res = await http.get(Uri.parse('https://api.example.com/projects'));
        if (res.statusCode == 200) {
          final List<dynamic> data = json.decode(res.body);
          final list = data.map((e) => Project.fromJson(e)).toList();
          state = AsyncValue.data(list);
        } else {
          throw Exception("API error: ${res.statusCode}");
        }
      } else {
        // ✅ Firestore
        final snapshot =
            await FirebaseFirestore.instance.collection('projects').get();
        final list =
            snapshot.docs.map((doc) => Project.fromJson(doc.data())).toList();
        state = AsyncValue.data(list);
      }
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> refresh() async => fetchProjects();
}

/// Provider
final projectsProvider =
    StateNotifierProvider<ProjectsNotifier, AsyncValue<List<Project>>>(
      // (ref) {  return ProjectsNotifier();}
      (ref) => ProjectsNotifier(ref),
    );

///설명(한글): ProjectsNotifier는 앱 시작 시 fetchProjects()를 호출해 데이터를 가져오고, UI는 ref.watch(projectsProvider)로 AsyncValue를 받아 when()으로 로딩/성공/에러를 처리합니다.
/// 실제 API를 쓰면 http.get 부분을 대체하세요.