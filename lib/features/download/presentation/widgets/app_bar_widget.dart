import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: Dimensions.width10),
        Text(
          title,
          style: TextStyle(
            fontSize: Dimensions.fontSize15 * 2,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Spacer(),
        Icon(
          Icons.cast,
          size: Dimensions.iconSize15 * 2,
          color: Colors.white,
        ),
        SizedBox(width: Dimensions.width10),
        Container(
          height: Dimensions.height15 * 2,
          width: Dimensions.width15 * 2,
          decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/images/Netflix-avatar.png'),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(width: Dimensions.width10),
      ],
    );
  }
}
