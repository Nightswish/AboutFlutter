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
          Future.delayed(widget.delay, () {
            if (mounted) _ctrl.forward();
          });
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
    _anim = Tween<Offset>(
      begin: Offset(0, widget.offsetY),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: widget.curve));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final disable = MediaQuery.of(context).disableAnimations;
      if (disable) {
        _ctrl.value = 1.0;
      } else {
        if (widget.delay == Duration.zero) {
          _ctrl.forward();
        } else {
          Future.delayed(widget.delay, () {
            if (mounted) _ctrl.forward();
          });
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

/// StaggeredEntrance 위젯
/// - child (단일 위젯) 또는 children (여러 위젯)을 받아서 순차적으로 애니메이션 적용
/// - index 값과 interval(간격)을 이용해 각 아이템에 다른 delay(지연 시간) 부여
class StaggeredEntrance extends StatelessWidget {
  final int index; // 몇 번째 아이템인지 (리스트/그리드에서 위치)
  final List<Widget>? children; // 여러 위젯을 동시에 넘길 때
  final Widget? child; // 단일 위젯만 넘길 때
  final Duration baseDelay; // 첫 시작 지연 시간
  final Duration interval; // 각 위젯 사이의 간격
  final Duration duration; // 개별 애니메이션 실행 시간
  final Curve curve; // 애니메이션 곡선

  const StaggeredEntrance({
    super.key,
    required this.index,
    this.children,
    this.child,
    this.baseDelay = const Duration(milliseconds: 200),
    this.interval = const Duration(milliseconds: 100),
    this.duration = kEntranceDuration,
    this.curve = kEntranceCurve,
  }) : assert(
         children != null || child != null,
         'child 또는 children 중 하나는 반드시 제공해야 합니다.',
       );

  @override
  Widget build(BuildContext context) {
    // child와 children을 통일해서 리스트로 다루기
    final widgets = children ?? [child!];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(widgets.length, (i) {
        // index와 i(내부 순번)를 기반으로 딜레이 계산
        final delay =
            baseDelay +
            Duration(milliseconds: interval.inMilliseconds * (index + i));

        // 개별 아이템을 _StaggeredItem 위젯으로 감싸서 애니메이션 적용
        return _StaggeredItem(
          child: widgets[i],
          delay: delay,
          duration: duration,
          curve: curve,
        );
      }),
    );
  }
}

/// 실제로 개별 아이템에 애니메이션을 적용하는 StatefulWidget
class _StaggeredItem extends StatefulWidget {
  final Widget child; // 애니메이션 적용할 위젯
  final Duration delay; // 시작 지연 시간
  final Duration duration; // 실행 시간
  final Curve curve; // 곡선

  const _StaggeredItem({
    required this.child,
    required this.delay,
    required this.duration,
    required this.curve,
  });

  @override
  State<_StaggeredItem> createState() => _StaggeredItemState();
}

class _StaggeredItemState extends State<_StaggeredItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl; // 애니메이션 컨트롤러
  late final Animation<double> _fade; // 투명도 애니메이션
  late final Animation<Offset> _slide; // 슬라이드 애니메이션

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: widget.duration);

    // 곡선을 적용한 CurvedAnimation
    final curved = CurvedAnimation(parent: _ctrl, curve: widget.curve);
    // 페이드(0 → 1)
    _fade = Tween<double>(begin: 0.0, end: 1.0).animate(curved);
    // 슬라이드 (아래에서 위로 올라오는 효과)
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.18), // 살짝 아래에서 시작
      end: Offset.zero, // 제자리로
    ).animate(curved);

    // 첫 빌드가 끝난 후에 delay를 적용하여 애니메이션 실행
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      // 접근성 설정 확인: 애니메이션 비활성화 시 즉시 표시
      final disable = MediaQuery.of(context).disableAnimations;
      if (disable) {
        _ctrl.value = 1.0;
      } else {
        Future.delayed(widget.delay, () {
          if (mounted) _ctrl.forward();
        });
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
    // Fade + Slide 조합으로 위젯을 감싸서 리턴
    return FadeTransition(
      opacity: _fade,
      child: SlideTransition(position: _slide, child: widget.child),
    );
  }
}
