import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: Dimensions.iconSize10 * 3,
          ),
          Text(text),
        ],
      ),
    );
  }
}
