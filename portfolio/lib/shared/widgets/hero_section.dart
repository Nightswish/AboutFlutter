import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../presentation/responsive.dart';
import 'package:go_router/go_router.dart';

/// 히어로 섹션 위젯
class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeIn;
  late Animation<Offset> _slideUp;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeIn = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _slideUp = Tween<Offset>(
      begin: const Offset(0, 0.2), // 아래에서 위로 슬라이드
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return FadeTransition(
      opacity: _fadeIn,
      child: SlideTransition(
        position: _slideUp,
        child: Padding(
          padding: Responsive.edgeInsetsAll(
            context,
            mobile: 16,
            tablet: 24,
            desktop: 48,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:
                isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              // 메인 타이틀
              Text(
                "🚀 Welcome to My Portfolio",
                textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: Responsive.fontSize(
                    context: context,
                    mobile: 28,
                    tablet: 36,
                    desktop: 48,
                  ),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black.withAlpha((0.4 * 255).round()),
                      offset: const Offset(2, 2),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: Responsive.value(
                  context: context,
                  mobile: 12,
                  tablet: 16,
                  desktop: 20,
                ),
              ),

              // 부제목
              Text(
                "I build modern, responsive Flutter web apps.",
                textAlign: isDesktop ? TextAlign.left : TextAlign.center,
                style: TextStyle(
                  fontSize: Responsive.fontSize(
                    context: context,
                    mobile: 14,
                    tablet: 16,
                    desktop: 18,
                  ),
                  color: Colors.white70,
                ),
              ),

              SizedBox(
                height: Responsive.value(
                  context: context,
                  mobile: 16,
                  tablet: 24,
                  desktop: 32,
                ),
              ),

              // CTA 버튼
              Flex(
                direction: isDesktop ? Axis.horizontal : Axis.vertical,
                mainAxisAlignment: isDesktop
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => context.go('/render'),
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
                      textStyle: TextStyle(
                        fontSize: Responsive.fontSize(
                          context: context,
                          mobile: 14,
                          tablet: 16,
                          desktop: 18,
                        ),
                      ),
                    ),
                    child: const Text("RenderPage"),
                  ),
                  if (isDesktop) const SizedBox(width: 16) else const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () => context.go('/privacy'),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white70),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: Responsive.value(
                          context: context,
                          mobile: 20,
                          tablet: 28,
                          desktop: 40,
                        ),
                        vertical: Responsive.value(
                          context: context,
                          mobile: 10,
                          tablet: 14,
                          desktop: 18,
                        ),
                      ),
                    ),
                    child: const Text("privacy"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
