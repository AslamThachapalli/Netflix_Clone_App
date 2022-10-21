import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class FailureDisplayWidget extends StatelessWidget {
  const FailureDisplayWidget({
    Key? key,
    required this.failureMessage,
  }) : super(key: key);
  final String failureMessage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: Dimensions.screenWidth * 0.36,
          backgroundColor: Colors.grey.withOpacity(0.5),
        ),
        Text(
          "$failureMessage\nCouldn't Load Images",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: Dimensions.fontSize20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
