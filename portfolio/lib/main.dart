import 'package:flutter/material.dart'; // Flutter 기본 패키지
import 'package:go_router/go_router.dart'; // GoRouter: 선언적 라우팅 관리
import 'package:google_fonts/google_fonts.dart'; // Google Fonts

import 'package:portfolio/presentation/responsive.dart'; // 반응형 헬퍼
import 'shared/widgets/hero_section.dart';
import 'core/theme/theme.dart' as app_theme;
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Riverpod
import 'core/providers/theme_provider.dart';
import 'package:portfolio/presentation/privacy_policy_page.dart'; // api 모델

// 조건부 임포트: 웹일 때는 web_utils_web.dart, 아니면 web_utils_stub.dart
import 'core/utils/web_utils_stub.dart'
    if (dart.library.html) 'core/utils/web_utils_web.dart';

// 애플리케이션의 진입점 및 초기 설정
void main() {
  // ProviderScope로 앱 전체를 감싼다 (Riverpod)
  runApp(const ProviderScope(child: PortfolioApp()));
}

class PortfolioApp extends ConsumerWidget {
  // 생성자. super.key는 위젯 고유 식별자 같은 것
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // build 메서드는 이 위젯이 화면에 어떻게 그려질지를 정의함.
    // context는 위젯 트리의 위치 정보를 담고 있음.

    // theme 상태를 구독(watch)하면 변경 시 재빌드됨
    final themeMode = ref.watch(themeNotifierProvider);

    // ✨ GoRouter 설정 ✨
    // 앱 내에서 어떤 경로(URL)로 접속했을 때 어떤 화면을 보여줄지 정의하는 부분
    final router = GoRouter(
      routes: [
        // 앱의 모든 경로들 정의
        GoRoute(
          // 개별 경로 정의
          path: '/', // 루트 경로 ('/'는 앱의 첫 화면을 의미)
          builder: (context, state) =>
              const HomePage(), // 이 경로로 가면 HomePage 위젯을 보여줌
        ),
        GoRoute(
          path: '/privacy', // '/privacy' 경로로 가면
          builder: (context, state) =>
              const PrivacyPolicyPage(), // PrivacyPolicyPage를 보여줌
        ),
        GoRoute(
          path: '/terms', // '/terms' 경로로 가면
          builder: (context, state) => const TermsPage(), // TermsPage를 보여줌
        ),
        GoRoute(
          path: '/render',
          builder: (context, state) => const RenderPage(),
        ),
      ],
      // 이 외에도 에러 페이지, 리다이렉트 등 다양한 GoRouter 설정이 가능
    );

    /// ✨ MaterialApp.router 위젯 ✨
    /// 플러터 앱의 가장 기본이 되는 위젯 중 하나
    /// .router를 붙인 건 GoRouter와 같은 라우팅 라이브러리를 사용할 때 쓰는 방식
    // return MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //   title: 'My Portfolio', // 앱 작업 관리자(Alt+Tab)나 웹 브라우저 탭에 표시될 앱의 이름
    //   theme: AppTheme.lightTheme,
    //   darkTheme: AppTheme.darkTheme,
    //   themeMode: ThemeMode.system,
    //   routerConfig: router, // 위에서 정의한 GoRouter 설정을 연결함
    // );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: app_theme.AppTheme.lightTheme,
      darkTheme: app_theme.AppTheme.darkTheme,
      themeMode: themeMode, // Riverpod에서 공급된 모드 사용
      routerConfig: router,
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key}); // 상태 변화 X

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Scaffold는 앱의 기본적인 시각 구조(앱바, 본문, 하단바 등)를 제공하는 위젯
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Portfolio"),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            tooltip: "Toggle Theme",
            onPressed: () {
              // ThemeNotifier의 toggleTheme 호출
              ref.read(themeNotifierProvider.notifier).toggleTheme();
            },
          ),
        ],
      ),
      body: const Center(
        child: HeroSection(), // 히어로 섹션
      ),
      // child: SafeArea(
      //   child: Padding( // 위젯들을 세로로 쌓을 때 쓰는 위젯
      //     padding: Responsive.edgeInsetsAll(
      //           context,
      //           mobile: 16,
      //           tablet: 32,
      //           desktop: 64,
      //     ),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const HeroTitleHome(),
      //         SizedBox(
      //           height: Responsive.value(context: context, mobile: 16, tablet: 24, desktop: 32),
      //         ),
      //         // 버튼 영역 반응형: 데스크탑은 Row, 나머지는 Column
      //         Flex(
      //           direction: isDesktop ? Axis.horizontal : Axis.vertical,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             _buildButton(context, label: "Go to Privacy", onTap: () => context.go("/privacy")),
      //             _buildButton(context, label: "Go to Terms", onTap: () => context.go("/terms")),
      //             _buildButton(context, label: "Go to Render Page", onTap: () => context.go("/render")),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  /// 버튼 위젯 빌더(헬퍼)
  // Widget _buildButton(BuildContext context,
  //     {required String label, required VoidCallback onTap}) {
  //   return Padding(
  //     padding: EdgeInsets.all(
  //       Responsive.value(context: context, mobile: 6.0, tablet: 8.0, desktop: 12.0),
  //     ),
  //     child: ElevatedButton(
  //       onPressed: onTap,
  //       style: ElevatedButton.styleFrom(
  //         padding: EdgeInsets.symmetric(
  //           horizontal: Responsive.value(
  //             context: context,
  //             mobile: 24,
  //             tablet: 32,
  //             desktop: 48,
  //             fallback: 24,
  //           ),
  //           vertical: Responsive.value(
  //             context: context,
  //             mobile: 12,
  //             tablet: 16,
  //             desktop: 20,
  //             fallback: 12,
  //           ),
  //         ),
  //         textStyle: TextStyle(
  //           fontSize: Responsive.fontSize(
  //             context: context,
  //             mobile: 14,
  //             tablet: 16,
  //             desktop: 18,
  //           ),
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       child: Text(label),
  //     ),
  //   );
  // }
}

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Privacy Policy Page'),
      ), // 화면 중앙에 'Privacy Policy Page' 텍스트를 보여줌
    );
  }
}

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Terms of Service Page')));
  }
}

class RenderPage extends StatefulWidget {
  const RenderPage({super.key});

  @override
  State<RenderPage> createState() => _RenderPage();
}

class _RenderPage extends State<RenderPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeIn;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeIn = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward(); // 애니메이션 시작
  }

  @override
  void dispose() {
    _controller.dispose(); // 컨트롤러는 반드시 dispose 해주어야 해! 메모리 누수 방지!
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final size = MediaQuery.of(context).size; // 현재 화면 크기 가져오기

    return Scaffold(
      body: Stack(
        // 여러 위젯을 겹쳐서 배치할 때 사용하는 위젯
        children: [
          // 배경: 그라데이션이 적용된 Container
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                // 선형 그라데이션
                colors: [Colors.blueAccent, Colors.purpleAccent], // 색상 지정
                begin: Alignment.topLeft, // 그라데이션 시작점 (좌측 상단)
                end: Alignment.bottomRight, // 그라데이션 끝점 (우측 하단)
              ),
            ),
          ),

          // 중앙 히어로 섹션 (페이드인 애니메이션 적용)
          Center(
            child: FadeTransition(
              // 불투명도를 애니메이션으로 변경하는 위젯
              opacity: _fadeIn, // 위에서 정의한 페이드인 애니메이션 사용
              child: Padding(
                padding: Responsive.edgeInsetsAll(
                  context,
                  mobile: 16,
                  tablet: 24,
                  desktop: 32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const HeroTitle(),
                    SizedBox(
                      height: Responsive.value(
                        context: context,
                        mobile: 12,
                        tablet: 20,
                        desktop: 28,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: Responsive.value(
                            context: context,
                            mobile: 24,
                            tablet: 32,
                            desktop: 48,
                          ),
                          vertical: Responsive.value(
                            context: context,
                            mobile: 12,
                            tablet: 16,
                            desktop: 20,
                          ),
                        ),
                      ),
                      onPressed: () => context.go('/'),
                      child: const Text("Back to Home"),
                    ),
                    SizedBox(
                      height: Responsive.value(
                        context: context,
                        mobile: 12,
                        tablet: 16,
                        desktop: 20,
                      ),
                    ),

                    // HTML / CanvasKit 버튼
                    Flex(
                      direction: isDesktop ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            const url = "https://username.github.io/html/";
                            openUrl(url); // ✅ 조건부 임포트된 함수 호출
                          },
                          child: const Text("Try HTML Renderer"),
                        ),
                        SizedBox(
                          width: isDesktop ? 16 : 0,
                          height: isDesktop ? 0 : 12,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            const url = "https://username.github.io/canvaskit/";
                            openUrl(url); // ✅ 조건부 임포트된 함수 호출
                          },
                          child: const Text("Try CanvasKit Renderer"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 히어로 섹션의 제목 위젯
class HeroTitle extends StatelessWidget {
  const HeroTitle({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive 기반 글꼴 크기 계산
    final fontSize = Responsive.fontSize(
      context: context,
      mobile: 28,
      tablet: 36,
      desktop: 48,
    );

    return Hero(
      // 위젯 간의 시각적 연결 애니메이션 (다른 화면으로 전환될 때 유용)
      tag: "Rendering Page", // 고유 태그 (같은 태그를 가진 다른 화면의 위젯과 연결됨)
      child: Material(
        // 텍스트 위젯에 Material 디자인 효과 (그림자 등)를 적용하기 위해 감싸줌
        color: Colors.transparent, // Material 위젯의 배경을 투명하게 설정
        child: Text(
          "Check Rendering",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            // Google Fonts의 Poppins 글꼴 사용 (개별 위젯에서 폰트 오버라이드)
            fontSize: fontSize, // ✅ 반응형 적용
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              // 텍스트에 그림자 효과 추가
              Shadow(
                blurRadius: 8,
                color: Colors.black.withAlpha(
                  (0.5 * 255).round(),
                ), // withOpacity -> withValues
                offset: const Offset(2, 2), // 그림자 위치 (x, y)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeroTitleHome extends StatelessWidget {
  const HeroTitleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Responsive.value(
        context: context,
        mobile: '👋 Welcome!',
        tablet: '👋 Welcome to\nMy Portfolio!',
        desktop: '👋 Welcome to My Portfolio!',
      ),
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: Responsive.fontSize(
          context: context,
          mobile: 20,
          tablet: 26,
          desktop: 34,
        ),
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    );
  }
}
