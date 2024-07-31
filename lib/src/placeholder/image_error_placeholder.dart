import 'package:flutter/widgets.dart';

import '../shimmer/shimmer_box.dart';

class NFTImageErrorPlaceholder extends StatelessWidget {
  final double width;
  final double height;

  const NFTImageErrorPlaceholder({
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: height,
        minWidth: width,
      ),
      child: const NFTPlaceholderShimmer(
        child: NFTPlaceholderBox(),
      ),
    );
  }
}
