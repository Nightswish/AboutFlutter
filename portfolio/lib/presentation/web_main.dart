// lib/presentation/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:portfolio/core/providers/theme_provider.dart';

// 반응형 헬퍼
import 'package:portfolio/presentation/responsive.dart';

// 재사용 위젯들
import 'package:portfolio/shared/widgets/profile_sidebar.dart';
import 'package:portfolio/shared/widgets/skills_section.dart';
import 'package:portfolio/shared/widgets/footer_section.dart';
import 'package:portfolio/shared/widgets/web_hero_section.dart';

// 애니메이션 헬퍼
import 'package:portfolio/shared/animations/entrance_animations.dart';

/// HomePage
/// - 데스크탑: 왼쪽 고정 프로필 사이드바 + 오른쪽 스크롤 콘텐츠 (Hero, Skills, Projects, Footer)
/// - 모바일: 위->아래 스택 (Profile, Hero, Skills, Projects, Footer)
class WebMain extends ConsumerWidget {
  const WebMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 반응형 판정
    final isDesktop = Responsive.isDesktop(context);

    // 전체 레이아웃: 데스크탑은 Row(좌측 고정, 우측 스크롤)
    if (isDesktop) {
      return Scaffold(
        // AppBar는 선택사항 — 고정 프로필이 있기 때문에 AppBar를 생략하거나 단순화해도 됨
        // appBar: AppBar(
        //   actions: [
        //     IconButton(
        //       icon: const Icon(Icons.brightness_6),
        //       tooltip: "Toggle Theme",
        //       onPressed: () {
        //         // ThemeNotifier의 toggleTheme 호출
        //         ref.read(themeNotifierProvider.notifier).toggleTheme();
        //       },
        //     ),
        //   ],
        // ),
        body: Row(
          children: [
            // 좌측 고정 프로필 (너비 고정 또는 비율)
            const SizedBox(
              width: 320, // 데스크탑에서 사이드바 고정 너비 (원하면 Responsive.value로 조정)
              child: ProfileSidebar(),
            ),

            // 우측 컨텐츠: 스크롤 영역
            Expanded(
              child: SingleChildScrollView(
                // 좌우 여백을 콘텐츠 내부에서 제어하도록 함
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    SizedBox(height: 48),
                    // 히어로 섹션(이미 구현된 것을 재사용하거나 별도 작성)
                    // HeroSection(), // 만약 존재하면 주석 해제
                    // 간단한 hero 대체(예시)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: FadeIn(
                        delay: Duration(milliseconds: 80),
                        child: Text(
                          '안녕하세요 — 개발자 김 입니다.',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 48),
                    HeroSection(),

                    // Skills
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: SkillsSection(),
                    ),

                    SizedBox(height: 48),

                    // Projects: ProjectsGrid는 내부에서 Provider를 구독해 데이터를 불러옴
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 24),
                    //   child: ProjectsGrid(),
                    // ),
                    SizedBox(height: 48),

                    // Footer
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: FooterSection(),
                    ),

                    SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    // 모바일/태블릿: 세로 스택 — 프로필을 상단에 두고 아래로 스크롤
    return Scaffold(
      appBar: AppBar(title: const Text('Portfolio')),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 24),
            ProfileSidebar(), // 모바일에선 프로필 영역이 상단에 나타남
            SizedBox(height: 24),

            // Hero
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: FadeIn(
                delay: Duration(milliseconds: 80),
                child: Text(
                  '안녕하세요 — Flutter 개발자 김종국입니다.',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 24),

            // Skills
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SkillsSection(),
            ),
            SizedBox(height: 24),

            // Projects
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   child: ProjectsGrid(),
            // ),
            SizedBox(height: 24),

            // Footer
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: FooterSection(),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
