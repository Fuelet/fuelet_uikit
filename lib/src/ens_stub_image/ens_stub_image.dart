import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/constants/colors.dart';
import '../theme/constants/typography.dart';
import '../utils/constants/assets.dart';

class NFTENSStubImage extends StatelessWidget {
  final String name;
  final bool small;

  const NFTENSStubImage(
    this.name, {
    this.small = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            NFTColors.ensBlue,
            NFTColors.ensPurple,
          ],
          stops: [
            0.0,
            1.0,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              NFTAssetsPaths.ensLogo,
              package: NFTAssetsPaths.packageName,
              width: small ? null : 58,
              height: small ? null : 64,
            ),
            AutoSizeText(
              name,
              maxLines: 2,
              minFontSize: 13,
              overflow: TextOverflow.ellipsis,
              style: NFTTypography.body1Normal.copyWith(
                color: NFTColors.white,
                fontSize: small ? null : 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
