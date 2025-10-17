// lib/shared/widgets/skills_section.dart
import 'package:flutter/material.dart';
import 'package:portfolio/shared/animations/entrance_animations.dart';
// import 'package:portfolio/presentation/responsive.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = <Map<String, dynamic>>[
      {'icon': Icons.flutter_dash, 'label': 'Flutter'},
      {'icon': Icons.code, 'label': 'Java'},
      {'icon': Icons.web, 'label': 'Web'},
      {'icon': Icons.storage, 'label': ''},
      {'icon': Icons.design_services, 'label': 'UI/UX'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: List.generate(skills.length, (i) {
            final s = skills[i];
            // FadeSlide: SlideUp + Fade 조합 (entrance_animations.dart에서 정의)
            return FadeSlide(
              delay: Duration(milliseconds: 80 * i),
              child: Chip(
                avatar: Icon(s['icon'] as IconData, size: 18),
                label: Text(s['label'] as String),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
