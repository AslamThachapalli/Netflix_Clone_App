import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import 'download_screen_image_widget.dart';

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  final List<String> imageList = [
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nQKW2sabIClUsrQl3Y3i5LQgf5l.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.fontSize20 + Dimensions.fontSize5 / 5,
          ),
        ),
        SizedBox(height: Dimensions.height20),
        Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: Dimensions.fontSize15,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
            height: 1.3,
          ),
        ),
        SizedBox(
          height: Dimensions.screenWidth * 0.83,
          width: Dimensions.screenWidth,
          child: Stack(
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
                image: imageList[0],
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
                image: imageList[2],
                size: Size(
                  Dimensions.screenWidth * 0.38,
                  Dimensions.screenHeight * 0.234,
                ),
              ),
              DownloadScreenImageWidget(
                margin: EdgeInsets.only(top: Dimensions.height20),
                angle: 0,
                image: imageList[1],
                size: Size(
                  Dimensions.screenWidth * 0.39,
                  Dimensions.screenHeight * 0.265,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height20),
      ],
    );
  }
}
