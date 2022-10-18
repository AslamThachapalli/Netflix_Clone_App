import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget({
    Key? key,
    required this.buttonColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  final Color buttonColor;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.height10,
        horizontal: Dimensions.width10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.radius5),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: Dimensions.fontSize20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
