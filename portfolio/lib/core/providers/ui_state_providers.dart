import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 사이드바/드로어 열림 토글 (간단한 boolean 상태)
final drawerOpenProvider = StateProvider<bool>((ref) => false);

/// 현재 선택된 네비게이션 (예: int index 또는 string route)
final selectedIndexProvider = StateProvider<int>((ref) => 0);

/// 예: 애니메이션을 강제로 끄거나 켜는 앱 레벨 플래그(권장: MediaQuery 이용 권장)
final forceAnimationsProvider = StateProvider<bool>((ref) => true);

///설명 위 Provider들은 아주 단순한 UI 상태를 관리합니다. 
///ref.read(drawerOpenProvider.notifier).state = true로 조작할 수 있고, 
///위젯에서는 final open = ref.watch(drawerOpenProvider); 처럼 사용합니다.