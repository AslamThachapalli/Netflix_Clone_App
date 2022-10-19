import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: Dimensions.width10),
        ),
      ),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: Dimensions.iconSize5 * 5,
      ),
      label: Row(
        children: [
          Text(
            'Play',
            style: TextStyle(
              color: kBlackColor,
              fontSize: Dimensions.fontSize20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: Dimensions.width5)
        ],
      ),
    );
  }
}
