import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';
import 'download_screen_image_widget.dart';

class DownloadsPageImageWidget extends StatelessWidget {
  const DownloadsPageImageWidget({
    Key? key,
    required this.imageUrlList,
  }) : super(key: key);
  final List<String> imageUrlList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: Dimensions.screenWidth * 0.36,
          backgroundColor: Colors.grey.withOpacity(0.5),
        ),
        DownloadScreenImageWidget(
          margin: EdgeInsets.only(
            right: Dimensions.width50 * 2.5 + Dimensions.width10 * 3,
            bottom: Dimensions.height20,
          ),
          angle: -20,
          image: "$kImageBaseUrl${imageUrlList[0]}",
          size: Size(
            Dimensions.screenWidth * 0.38,
            Dimensions.screenHeight * 0.234,
          ),
        ),
        DownloadScreenImageWidget(
          margin: EdgeInsets.only(
            left: Dimensions.width50 * 2.5 + Dimensions.width10 * 3,
            bottom: Dimensions.height20,
          ),
          angle: 20,
          image: "$kImageBaseUrl${imageUrlList[2]}",
          size: Size(
            Dimensions.screenWidth * 0.38,
            Dimensions.screenHeight * 0.234,
          ),
        ),
        DownloadScreenImageWidget(
          margin: EdgeInsets.only(top: Dimensions.height20),
          angle: 0,
          image: "$kImageBaseUrl${imageUrlList[1]}",
          size: Size(
            Dimensions.screenWidth * 0.39,
            Dimensions.screenHeight * 0.265,
          ),
        ),
      ],
    );
  }
}
