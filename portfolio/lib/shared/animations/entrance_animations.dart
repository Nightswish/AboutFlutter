import 'package:flutter/material.dart';

/// 자주 쓰는 진입(entrance) 애니메이션 모음
/// - FadeIn: 단순 페이드인
/// - SlideUp: 아래에서 위로 슬라이드
/// - FadeSlide: Fade + Slide 조합
/// - StaggeredEntrance: 리스트/그리드 항목 순차 등장
///
/// 접근성: MediaQuery.of(context).disableAnimations 가 true이면 애니메이션을 생략합니다.

/// Common durations / curve
const Duration kEntranceDuration = Duration(milliseconds: 500);
const Curve kEntranceCurve = Curves.easeOutCubic;

/// FadeIn: Simple fade-in with optional delay.
/// Respects MediaQuery.of(context).disableAnimations (reduced motion).
class FadeIn extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Curve curve;

  const FadeIn({
    super.key,
    required this.child,
    this.duration = kEntranceDuration,
    this.delay = Duration.zero,
    this.curve = kEntranceCurve,
  });

  @override
  State<FadeIn> createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: widget.duration);
    _anim = CurvedAnimation(parent: _ctrl, curve: widget.curve);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final disable = MediaQuery.of(context).disableAnimations;
      if (disable) {
        _ctrl.value = 1.0;
      } else {
        if (widget.delay == Duration.zero) {
          _ctrl.forward();
        } else {
          Future.delayed(widget.delay, () { if (mounted) _ctrl.forward(); });
        }
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).disableAnimations) return widget.child;
    return FadeTransition(opacity: _anim, child: widget.child);
  }
}

/// SlideUp: slide from offset (0, y) to 0 and optional fade.
class SlideUp extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Curve curve;
  final double offsetY; // starting Y offset in fraction of height (e.g. 0.2)

  const SlideUp({
    super.key,
    required this.child,
    this.duration = kEntranceDuration,
    this.delay = Duration.zero,
    this.curve = kEntranceCurve,
    this.offsetY = 0.2,
  });

  @override
  State<SlideUp> createState() => _SlideUpState();
}

class _SlideUpState extends State<SlideUp> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<Offset> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: widget.duration);
    _anim = Tween<Offset>(begin: Offset(0, widget.offsetY), end: Offset.zero)
        .animate(CurvedAnimation(parent: _ctrl, curve: widget.curve));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final disable = MediaQuery.of(context).disableAnimations;
      if (disable) {
        _ctrl.value = 1.0;
      } else {
        if (widget.delay == Duration.zero) {
          _ctrl.forward();
        } else {
          Future.delayed(widget.delay, () { if (mounted) _ctrl.forward(); });
        }
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).disableAnimations) return widget.child;
    return SlideTransition(position: _anim, child: widget.child);
  }
}

/// FadeSlide: Combined Fade + Slide for elegant entrance.
class FadeSlide extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final Curve curve;
  final double offsetY;

  const FadeSlide({
    super.key,
    required this.child,
    this.duration = kEntranceDuration,
    this.delay = Duration.zero,
    this.curve = kEntranceCurve,
    this.offsetY = 0.18,
  });

  @override
  Widget build(BuildContext context) {
    // Wrap SlideUp around FadeIn to avoid duplicate controllers (small overhead acceptable)
    // SlideUp이 delay를 처리하므로, FadeIn의 delay는 0으로 둡니다.
    return SlideUp(
      duration: duration,
      delay: delay,
      curve: curve,
      offsetY: offsetY,
      child: FadeIn(
        duration: duration,
        delay: Duration.zero,
        curve: curve,
        child: child,
      ),
    );
  }
}

/// StaggeredEntrance: takes a list of children and applies incremental delays.
/// Usage: StaggeredEntrance(children: myChildren, initialDelay: 0ms, stepDelay: 80ms)
class StaggeredEntrance extends StatelessWidget {
  final List<Widget> children;
  final Duration initialDelay;
  final Duration stepDelay;
  final Duration duration;
  final Curve curve;

  const StaggeredEntrance({
    super.key,
    required this.children,
    this.initialDelay = Duration.zero,
    this.stepDelay = const Duration(milliseconds: 80),
    this.duration = kEntranceDuration,
    this.curve = kEntranceCurve,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).disableAnimations) {
      // 애니메이션 비활성화 시: 그냥 children 나열
      return Column(children: children);
    }

    return Column(
      children: [
        for (var i = 0; i < children.length; i++)
          FadeSlide(
            delay: initialDelay + stepDelay * i,
            duration: duration,
            curve: curve,
            child: children[i],
          )
      ],
    );
  }
}