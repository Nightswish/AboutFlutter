import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// HoverScale: scales/shadows its child on hover (web/desktop) and on press (mobile).
/// - hoverScale: scale on hover
/// - pressedScale: temporary scale on tap/press
/// - duration: animation duration
/// - Note: uses MouseRegion only when kIsWeb || desktop platforms, but also supports press feedback.
/// HoverScale: 마우스 오버(데스크탑/웹) 또는 터치(모바일)의 스케일/그림자 피드백을 처리합니다.
/// - web/desktop: MouseRegion으로 hover를 감지하고 scale/elevation 증가
/// - mobile: GestureDetector로 press down/up을 감지하여 instant feedback 제공
class HoverScale extends StatefulWidget {
  final Widget child;
  final double hoverScale;
  final double pressedScale;
  final Duration duration;
  final double elevation; // base elevation
  final double hoverElevation; // elevated on hover
  final VoidCallback? onTap;

  const HoverScale({
    super.key,
    required this.child,
    this.hoverScale = 1.04,
    this.pressedScale = 0.98,
    this.duration = const Duration(milliseconds: 140),
    this.elevation = 2,
    this.hoverElevation = 8,
    this.onTap,
  });

  @override
  State<HoverScale> createState() => _HoverScaleState();
}

class _HoverScaleState extends State<HoverScale> {
  bool _hover = false;
  bool _pressed = false;

  bool get _isInteractiveDevice {
    // Treat web and desktop as hover-capable; mobile uses press feedback only.
    // 웹 또는 데스크탑 플랫폼에서는 hover 사용
    return kIsWeb || [
      TargetPlatform.macOS,
      TargetPlatform.windows,
      TargetPlatform.linux
    ].contains(Theme.of(context).platform);
  }

  void _setHover(bool v) {
    setState(() => _hover = v);
  }

  void _setPressed(bool v) {
    setState(() => _pressed = v);
  }

  @override
  Widget build(BuildContext context) {
    final effectiveScale = _pressed ? widget.pressedScale : (_hover ? widget.hoverScale : 1.0);
    final elevation = _hover ? widget.hoverElevation : widget.elevation;

    final animated = AnimatedContainer(
      duration: widget.duration,
      transform: Matrix4.identity()..scale(effectiveScale, effectiveScale),
      transformAlignment: Alignment.center,
      curve: Curves.easeOut,
      child: PhysicalModel(
        elevation: elevation,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.hardEdge,
        child: widget.child,
      ),
    );

    Widget interactive = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: widget.onTap,
      onTapDown: (_) => _setPressed(true),
      onTapUp: (_) => _setPressed(false),
      onTapCancel: () => _setPressed(false),
      child: animated,
    );

    if (_isInteractiveDevice) {
      // Wrap with MouseRegion to get hover events
      interactive = MouseRegion(
        onEnter: (_) => _setHover(true),
        onExit: (_) => _setHover(false),
        child: interactive,
      );
    }

    return interactive;
  }
}

/// Convenience: wrap an ElevatedButton for hover effect without changing ElevatedButton semantics
/// HoverElevatedButton: ElevatedButton에 HoverScale을 얹은 편의 위젯
class HoverElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  const HoverElevatedButton({super.key, required this.child, this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
    return HoverScale(
      onTap: onPressed,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style ??
            ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
        child: child,
      ),
    );
  }
}
