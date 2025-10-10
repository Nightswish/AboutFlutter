import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:portfolio/core/providers/projects_provider.dart';
// import 'package:portfolio/shared/widgets/projects_grid.dart';
// import 'package:portfolio/shared/animations/entrance_animations.dart';
import 'package:portfolio/core/providers/theme_provider.dart';
import 'package:portfolio/shared/widgets/hero_section.dart';

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
