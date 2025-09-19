import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// ThemeNotifier: ThemeMode 상태를 관리하고 SharedPreferences에 저장/복원합니다.
/// /// - StateNotifier<ThemeMode>를 상속
/// - UI는 ref.watch(themeNotifierProvider)로 현재 모드를 읽고,
///   ref.read(themeNotifierProvider.notifier).toggleTheme() 등으로 변경함.
class ThemeNotifier extends StateNotifier<ThemeMode> {
  static const _prefKey = 'theme_mode';
  ThemeNotifier() : super(ThemeMode.system) {
    _loadFromPrefs();
  }

  Future<void> _loadFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final s = prefs.getString(_prefKey);
      if (s != null) {
        // ThemeMode.toString() 형태로 저장했으므로 복원시 비교
        final mode = ThemeMode.values.firstWhere(
          (e) => e.toString() == s,
          orElse: () => ThemeMode.system,
        );
        state = mode;
      }
    } catch (_) {
      // 실패해도 기본값(ThemeMode.system) 유지
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_prefKey, mode.toString());
    } catch (_) {
      // 저장 실패 무시
    }
  }

  Future<void> toggleTheme() async {
    final next = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await setThemeMode(next);
  }
}

/// Provider: UI에서 읽을 수 있는 상태(ThemeMode)와 조작자(ThemeNotifier)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) => ThemeNotifier());

///설명(한글): ThemeNotifier는 StateNotifier<ThemeMode>를 상속해서 현재 ThemeMode를 상태로 관리합니다. 
///생성자에서 SharedPreferences를 통해 저장된 값을 불러오고, setThemeMode로 변경하면 저장도 해줍니다. 
///UI는 ref.watch(themeNotifierProvider)로 현재 모드를 읽고, 토글은 ref.read(themeNotifierProvider.notifier).toggleTheme()처럼 호출