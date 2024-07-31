import 'package:flutter/widgets.dart';

import '../shimmer/shimmer_box.dart';

class NFTPlaceholder extends StatelessWidget {
  final double width;
  final double height;

  const NFTPlaceholder({
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: height,
          minWidth: width,
        ),
        child: const NFTPlaceholderShimmer(
          child: NFTPlaceholderBox(),
        ),
      ),
    );
  }
}
