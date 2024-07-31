import 'package:flutter/widgets.dart';

class NFTShimmer extends StatefulWidget {
  final Widget child;

  /// Длительность анимации
  final Duration duration;

  /// Насколько визуально широким будет блик, значение > 0
  final double waveWidth;

  /// Наколько большой будет задержка перед появлением блика в каждом цикле анимации, значение > 0
  final double waveDelay;

  /// Цвет, применяемый к виджетам внутри, вне блика
  final Color color;

  /// Цвет, применяемый к виджетам внутри, на блике
  final Color waveColor;

  const NFTShimmer({
    required this.child,
    required this.color,
    required this.duration,
    required this.waveDelay,
    required this.waveWidth,
    this.waveColor = const Color(0xFFFFFFFF),
    Key? key,
  }) : super(key: key);

  @override
  State<NFTShimmer> createState() => _NFTShimmerState();
}

class _NFTShimmerState extends State<NFTShimmer> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment(
                -widget.waveWidth -
                    2 * widget.waveDelay +
                    2 *
                        (widget.waveWidth + widget.waveDelay) *
                        _controller.value,
                0.0),
            end: Alignment(
                widget.waveWidth -
                    2 * widget.waveDelay +
                    2 *
                        (widget.waveWidth + widget.waveDelay) *
                        _controller.value,
                0.0),
            colors: [
              widget.color,
              widget.color,
              widget.waveColor,
              widget.color,
              widget.color,
            ],
            stops: const [
              0,
              0.25,
              0.5,
              0.75,
              1.0,
            ],
          ).createShader(bounds),
          child: child,
        );
      },
    );
  }
}
