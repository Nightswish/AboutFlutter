// lib/shared/widgets/profile_sidebar.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/presentation/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/core/providers/theme_provider.dart';

// (선택) 테마 provider import — 프로젝트에 맞게 경로/이름 조정하세요.
// 예: theme_provider.dart 에 themeModeProvider 라는 StateProvider<ThemeMode> 가 있다면 사용
// import 'package:portfolio/core/providers/theme_provider.dart';

class ProfileSidebar extends ConsumerWidget {
  const ProfileSidebar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // (선택) ThemeMode 토글링을 위해 Provider가 있다면 사용:
    // final themeMode = ref.watch(themeModeProvider);
    // final themeModeNotifier = ref.read(themeModeProvider.notifier);

    final isMobile = Responsive.isMobile(context);

    Future<void> _openUrl(String url) async {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    }

    return Container(
      // 배경/경계 스타일: 필요에 따라 color를 바꾸세요
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      padding: Responsive.edgeInsetsAll(context),
      // 데스크탑에서는 full-height 고정, 모바일에서는 콘텐츠 크기만큼
      child: Column(
        mainAxisAlignment: isMobile
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 프로필 이미지
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/sample.jpg'),
          ),
          const SizedBox(height: 16),

          // 이름
          Text(
            '김 (Jong Kook Kim)',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),

          // 직무 / 간단 소개
          Text(
            'Flutter Developer · UI/UX Enthusiast',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),

          // 연락처 / 소셜 버튼
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            children: [
              IconButton(
                tooltip: 'E-Mail',
                icon: const Icon(Icons.email_outlined),
                onPressed: () => _openUrl('mailto:luvrkdus@gmail.com'),
              ),
              IconButton(
                tooltip: 'GitHub',
                icon: const Icon(Icons.code),
                onPressed: () {
                  // GitHub 링크 열기
                  _openUrl('https://github.com/');
                },
              ),
              IconButton(
                tooltip: '링크드인',
                icon: const Icon(Icons.link),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),

          // 테마 토글 (데스크탑 전용으로 작게 표시)
          if (!isMobile)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          const SizedBox(height: 9),

          // Contact 버튼 (페이지로 이동)
          ElevatedButton.icon(
            onPressed: () {
              // 라우터로 /contact 페이지로 이동하도록 설정하세요.
              // 예: context.go('/contact');
            },
            icon: const Icon(Icons.send),
            label: const Text('Contact me'),
          ),
        ],
      ),
    );
  }
}
