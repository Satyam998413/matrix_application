import 'package:flutter/material.dart';
import 'package:matrix_application/core/theme/vibgyor_palette.dart';

/// A small 3x3 grid motif whose cells fade in sequentially in VIBGYOR order,
/// tying the splash brand moment to the app's core grid-coloring identity.
class MatrixLogoMark extends StatefulWidget {
  const MatrixLogoMark({super.key, this.size = 120});

  final double size;

  @override
  State<MatrixLogoMark> createState() => _MatrixLogoMarkState();
}

class _MatrixLogoMarkState extends State<MatrixLogoMark>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              final band =
                  VibgyorPalette.bands[index % VibgyorPalette.bands.length];
              final start = index / 9;
              final value = Curves.easeOut.transform(
                ((_controller.value - start) * 3).clamp(0.0, 1.0),
              );
              return Padding(
                padding: const EdgeInsets.all(3),
                child: Opacity(
                  opacity: value,
                  child: Transform.scale(
                    scale: 0.5 + (0.5 * value),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: band.resolve(brightness),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
