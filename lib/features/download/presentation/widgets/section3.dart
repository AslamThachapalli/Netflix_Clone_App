import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';
import 'material_button_widget.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
          child: const SizedBox(
            width: double.infinity,
            child: MaterialButtonWidget(
              buttonColor: kButtonColor,
              text: 'Set up',
              textColor: kWhiteColor,
            ),
          ),
        ),
        SizedBox(height: Dimensions.height10),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width10 * 2 - (Dimensions.width5 / 5),
          ),
          child: const MaterialButtonWidget(
            buttonColor: kWhiteColor,
            text: 'See what you can download',
            textColor: kBlackColor,
          ),
        ),
      ],
    );
  }
}
