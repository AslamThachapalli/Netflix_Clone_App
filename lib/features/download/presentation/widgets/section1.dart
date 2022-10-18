import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        SizedBox(width: Dimensions.width10),
        Text(
          'Smart Downloads',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.fontSize15 + (Dimensions.fontSize15 / Dimensions.fontSize5),
          ),
        ),
      ],
    );
  }
}
