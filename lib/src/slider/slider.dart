import 'package:flutter/material.dart';

import '../../fuelet_uikit.dart';
import 'custom_round_slider_thumb_shape.dart';

class NFTSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final ValueChanged<double>? onChangeEnd;
  final int? divisions;

  const NFTSlider({
    Key? key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.onChangeEnd,
    this.divisions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final materialTheme = Theme.of(context);
    final sliderTheme = NFTTheme.of(context).sliderThemeData;

    return Theme(
      data: materialTheme.copyWith(
        sliderTheme: materialTheme.sliderTheme.copyWith(
          trackHeight: 4,
          thumbShape: CustomRoundSliderThumbShape(
            shadowColor: sliderTheme.shadowColor,
            enabledThumbRadius: sliderTheme.thumbRadius,
            elevation: sliderTheme.thumbElevation,
            pressedElevation: sliderTheme.thumbElevation,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: sliderTheme.overlayRadius,
          ),
        ),
      ),
      child: Slider(
        value: value,
        min: min,
        max: max,
        divisions: divisions,
        onChanged: onChanged,
        onChangeEnd: onChangeEnd,
        activeColor: sliderTheme.activeColor,
        inactiveColor: sliderTheme.inactiveColor,
        thumbColor: sliderTheme.thumbColor,
      ),
    );
  }
}
