import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

// 상대 경로: shared/widgets 에서 core/responsive.dart 로 올라가려면 ../../ 로 올라감
import '../../presentation/responsive.dart';
import '../animations/entrance_animations.dart';
import '../animations/hover_animations.dart';

/// HeroSection: 랜딩 페이지 상단에 위치하는 핵심 섹션
/// 특징 요약
/// 1. 전체 FadeSlide 진입 애니메이션 → HeroSection이 화면에 들어올 때 자연스럽게 등장
/// 2. 타이틀 → FadeSlide + 반응형 폰트 (Responsive.fontSize) + 그림자 효과
/// 3. 부제 (Subtitle) → FadeIn으로 살짝 지연 후 등장
/// 4. 버튼 → HoverElevatedButton 사용 → 
///     웹/데스크탑 → hover 시 scale + shadow 효과
///     모바일 → 터치 시 press 효과
/// 5. 레이아웃 →
///     데스크탑 이상: 버튼 가로 정렬
///     모바일/태블릿: 버튼 세로 정렬
/// 6. 스타일 → HeroSection 배경에 보라색 계열 그라데이션 + 반응형 패딩

/// - 반응형 (Responsive 헬퍼 사용)
/// - 애니메이션 (FadeSlide, FadeIn, HoverElevatedButton)
/// - 접근성 고려: 시스템에서 애니메이션을 끄면 애니메이션 무시
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return FadeSlide(
      // 전체 섹션의 진입 애니메이션
      delay: const Duration(milliseconds: 100),
      child: Container(
        // 히어로 섹션 전용 배경 (그라데이션) — 필요하면 이미지/비디오로 교체 가능
        padding: Responsive.edgeInsetsAll(context, mobile: 16, tablet: 24, desktop: 48),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF4F46E5), Color(0xFF6366F1)], // 보라 계열 그라데이션
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            // Title: FadeSlide를 재사용해 타이틀만 따로 애니메이션 줄 수도 있음
            FadeSlide(
              delay: const Duration(milliseconds: 120),
              child: Text(
                "🚀 안녕하세요 — 포트폴리오에 오신 것을 환영합니다",
                textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                style: GoogleFonts.poppins(
                  // Responsive.fontSize는 MediaQuery.textScaleFactor(접근성)까지 반영
                  fontSize: Responsive.fontSize(context: context, mobile: 28, tablet: 36, desktop: 48),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(blurRadius: 10, color: Colors.black.withOpacity(0.3), offset: const Offset(2, 2)),
                  ],
                ),
              ),
            ),

            SizedBox(height: Responsive.value(context: context, mobile: 12, tablet: 16, desktop: 20)),

            // Subtitle
            FadeIn(
              delay: const Duration(milliseconds: 260),
              child: Text(
                "Flutter로 반응형 웹/앱을 만들고, 깔끔한 UI와 퍼포먼스를 중요시합니다.",
                textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                style: TextStyle(
                  fontSize: Responsive.fontSize(context: context, mobile: 14, tablet: 16, desktop: 18),
                  color: Colors.white70,
                ),
              ),
            ),

            SizedBox(height: Responsive.value(context: context, mobile: 16, tablet: 24, desktop: 32)),

            // CTA 버튼 그룹 (데스크탑: 가로, 모바일: 세로)
            Flex(
              direction: isDesktop ? Axis.horizontal : Axis.vertical,
              mainAxisAlignment: isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
              children: [
                // primary CTA (hover 가능)
                HoverElevatedButton(
                  onPressed: () => GoRouter.of(context).go('/render'),
                  child: Text(
                    "체험해보기",
                    style: TextStyle(fontSize: Responsive.fontSize(context: context, mobile: 14, tablet: 16, desktop: 18)),
                  ),
                ),

                SizedBox(width: isDesktop ? 16 : 0, height: isDesktop ? 0 : 12),

                // secondary CTA
                HoverElevatedButton(
                  onPressed: () => GoRouter.of(context).go('/privacy'),
                  child: Text(
                    "자세히 보기",
                    style: TextStyle(fontSize: Responsive.fontSize(context: context, mobile: 14, tablet: 16, desktop: 18)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



/// 특징 요약: 빠르게 심플한 Hero 섹션을 만들고, 커스텀 애니메이션을 세밀히 조정 
// class HeroSection extends StatefulWidget {
//   const HeroSection({super.key});

//   @override
//   State<HeroSection> createState() => _HeroSectionState();
// }

// class _HeroSectionState extends State<HeroSection>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeIn;
//   late Animation<Offset> _slideUp;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1200),
//     );

//     _fadeIn = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeIn,
//     );

//     _slideUp = Tween<Offset>(
//       begin: const Offset(0, 0.2), // 아래에서 위로 슬라이드
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeOutCubic,
//     ));

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isDesktop = Responsive.isDesktop(context);

//     return FadeTransition(
//       opacity: _fadeIn,
//       child: SlideTransition(
//         position: _slideUp,
//         child: Padding(
//           padding: Responsive.edgeInsetsAll(
//             context,
//             mobile: 16,
//             tablet: 24,
//             desktop: 48,
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment:
//                 isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
//             children: [
//               // 메인 타이틀
//               Text(
//                 "🚀 Welcome to My Portfolio",
//                 textAlign: isDesktop ? TextAlign.left : TextAlign.center,
//                 style: GoogleFonts.poppins(
//                   fontSize: Responsive.fontSize(
//                     context: context,
//                     mobile: 28,
//                     tablet: 36,
//                     desktop: 48,
//                   ),
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 10,
//                       color: Colors.black.withAlpha((0.4 * 255).round()),
//                       offset: const Offset(2, 2),
//                     )
//                   ],
//                 ),
//               ),

//               SizedBox(
//                 height: Responsive.value(
//                   context: context,
//                   mobile: 12,
//                   tablet: 16,
//                   desktop: 20,
//                 ),
//               ),

//               // 부제목
//               Text(
//                 "I build modern, responsive Flutter web apps.",
//                 textAlign: isDesktop ? TextAlign.left : TextAlign.center,
//                 style: TextStyle(
//                   fontSize: Responsive.fontSize(
//                     context: context,
//                     mobile: 14,
//                     tablet: 16,
//                     desktop: 18,
//                   ),
//                   color: Colors.white70,
//                 ),
//               ),

//               SizedBox(
//                 height: Responsive.value(
//                   context: context,
//                   mobile: 16,
//                   tablet: 24,
//                   desktop: 32,
//                 ),
//               ),

//               // CTA 버튼
//               Flex(
//                 direction: isDesktop ? Axis.horizontal : Axis.vertical,
//                 mainAxisAlignment: isDesktop
//                     ? MainAxisAlignment.start
//                     : MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () => context.go('/render'),
//                     style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: Responsive.value(
//                           context: context,
//                           mobile: 24,
//                           tablet: 32,
//                           desktop: 48,
//                         ),
//                         vertical: Responsive.value(
//                           context: context,
//                           mobile: 12,
//                           tablet: 16,
//                           desktop: 20,
//                         ),
//                       ),
//                       textStyle: TextStyle(
//                         fontSize: Responsive.fontSize(
//                           context: context,
//                           mobile: 14,
//                           tablet: 16,
//                           desktop: 18,
//                         ),
//                       ),
//                     ),
//                     child: const Text("RenderPage"),
//                   ),
//                   if (isDesktop) const SizedBox(width: 16) else const SizedBox(height: 12),
//                   OutlinedButton(
//                     onPressed: () => context.go('/privacy'),
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(color: Colors.white70),
//                       foregroundColor: Colors.white,
//                       padding: EdgeInsets.symmetric(
//                         horizontal: Responsive.value(
//                           context: context,
//                           mobile: 20,
//                           tablet: 28,
//                           desktop: 40,
//                         ),
//                         vertical: Responsive.value(
//                           context: context,
//                           mobile: 10,
//                           tablet: 14,
//                           desktop: 18,
//                         ),
//                       ),
//                     ),
//                     child: const Text("privacy"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
