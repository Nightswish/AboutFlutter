import 'package:flutter/widgets.dart';

/// 디바이스 타입 정의
/// - mobile: 스마트폰
/// - tablet: 큰 폰 / 작은 태블릿
/// - desktop: 노트북/데스크탑
/// - largeDesktop: 큰 화면 (TV / 4k 모니터 등)
enum DeviceScreenType { mobile, tablet, desktop, largeDesktop }

/// Breakpoints 중앙관리
/// 필요하면 여기만 수정해서 전체앱 브레이크포인트를 바꿀 수 있음.
class Breakpoints {
  // 📌 기본값 - 타깃에 따라 조정
  static const double mobile = 600;
  static const double tablet = 1024;
  static const double desktop = 1366;
  static const double largeDesktop = 1920;
}

/// Responsive 헬퍼 클래스
/// - MediaQuery 또는 LayoutBuilder에서 얻은 width로 DeviceScreenType 판정
/// - value<T>()로 브레이크포인트 별 값을 편리하게 반환
/// Convert width to DeviceScreenType
class Responsive {
  Responsive._(); // 인스턴스화 금지 (static API 전용)

  /// width → DeviceScreenType  :  width 기준으로 DeviceScreenType을 반환
  static DeviceScreenType deviceTypeFromWidth(double width) {
    if (width >= Breakpoints.largeDesktop) return DeviceScreenType.largeDesktop;
    if (width >= Breakpoints.desktop) return DeviceScreenType.desktop;
    if (width >= Breakpoints.tablet) return DeviceScreenType.tablet;
    return DeviceScreenType.mobile;
  }

  /// context → DeviceScreenType
  /// BuildContext에서 현재 DeviceScreenType을 반환
  /// MediaQuery.of(context).size.width 를 내부에서 사용함.
  /// Get current DeviceScreenType from BuildContext
  static DeviceScreenType of(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return deviceTypeFromWidth(width);
  }

  /// 간단 편의 함수들
  static bool isMobile(BuildContext context) => of(context) == DeviceScreenType.mobile;
  static bool isTablet(BuildContext context) => of(context) == DeviceScreenType.tablet;
  static bool isDesktop(BuildContext context) =>
      of(context) == DeviceScreenType.desktop || of(context) == DeviceScreenType.largeDesktop;

  static double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static bool isLandscape(BuildContext context) => MediaQuery.of(context).orientation == Orientation.landscape;

  /// 제네릭 값 반환
  static T value<T>({
    required BuildContext context,
    T? mobile,
    T? tablet,
    T? desktop,
    T? largeDesktop,
    T? fallback,
  }) {
    final device = of(context);
    T? result;
    switch (device) {
      case DeviceScreenType.largeDesktop:
        result = largeDesktop ?? desktop ?? tablet ?? mobile ?? fallback;
        break;
      case DeviceScreenType.desktop:
        result = desktop ?? tablet ?? mobile ?? fallback;
        break;
      case DeviceScreenType.tablet:
        result = tablet ?? mobile ?? fallback;
        break;
      case DeviceScreenType.mobile:
      default:
        result = mobile ?? fallback;
        break;
    }
    if (result == null) {
      throw ArgumentError(
          'Responsive.value: no value provided for current device and no fallback. Provide at least one of mobile/tablet/desktop/largeDesktop/fallback.');
    }
    return result;
  }

  /// 접근성 대응 텍스트 크기 반환
  static double fontSize({
    required BuildContext context,
    required double mobile,
    required double tablet,
    required double desktop,
    double? largeDesktop,
  }) {
    final base = value<double>(
      context: context,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
      largeDesktop: largeDesktop ?? desktop,
      fallback: mobile,
    );
    final textScale = MediaQuery.of(context).textScaler;
    return textScale.scale(base);
  }

  /// Recommend columns count for a width (useful for grid layouts)
  static int columnsForWidth(double width) {
    if (width >= 1366) return 4;
    if (width >= 1024) return 3;
    if (width >= 600) return 2;
    return 1;
  }

  static int columns(BuildContext context) => columnsForWidth(deviceWidth(context));

  /// ✅ 새로 추가된 메서드: 브레이크포인트별 균일 패딩 반환
  static EdgeInsets edgeInsetsAll(
    BuildContext context, {
    double mobile = 16,
    double tablet = 24,
    double desktop = 32,
    double? largeDesktop,
  }) {
    final v = value<double>(
      context: context,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
      largeDesktop: largeDesktop ?? desktop,
      fallback: mobile,
    );
    return EdgeInsets.all(v);
  }

  /// edgeInsetsSymmetric helper (horizontal/vertical)
  static EdgeInsets edgeInsetsSymmetric(
    BuildContext context, {
    double mobileHorizontal = 16,
    double tabletHorizontal = 24,
    double desktopHorizontal = 32,
    double mobileVertical = 8,
    double tabletVertical = 12,
    double desktopVertical = 16,
  }) {
    final h = value<double>(
      context: context,
      mobile: mobileHorizontal,
      tablet: tabletHorizontal,
      desktop: desktopHorizontal,
      fallback: mobileHorizontal,
    );
    final v = value<double>(
      context: context,
      mobile: mobileVertical,
      tablet: tabletVertical,
      desktop: desktopVertical,
      fallback: mobileVertical,
    );
    return EdgeInsets.symmetric(horizontal: h, vertical: v);
  }
}

/// LayoutBuilder 기반 빌더
/// ResponsiveBuilder: LayoutBuilder 기반으로 device type을 제공하는 빌더
class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext, DeviceScreenType) builder;

  const ResponsiveBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final device = Responsive.deviceTypeFromWidth(constraints.maxWidth);
        return builder(context, device);
      },
    );
  }
}