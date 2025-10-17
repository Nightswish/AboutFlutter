// lib/shared/widgets/footer_section.dart
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        const SizedBox(height: 12),
        Text(
          '© ${DateTime.now().year} Jong Kook Kim • All rights reserved',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          children: [
            TextButton(
              onPressed: () =>
                  {}, // privacy / terms 이동 시 context.go('/privacy') 등 사용
              child: const Text('Privacy'),
            ),
            TextButton(onPressed: () => {}, child: const Text('Terms')),
            TextButton(onPressed: () => {}, child: const Text('Contact')),
          ],
        ),
      ],
    );
  }
}
