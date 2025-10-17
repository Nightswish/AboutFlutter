import 'package:flutter/material.dart';
import 'package:portfolio/shared/widgets/section_container.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return SectionContainer(
      padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hi, I’m Jongguk 👋",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: color.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text("Web Developer", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 32),
          FilledButton(onPressed: () {}, child: const Text("View Work")),
        ],
      ),
    );
  }
}
