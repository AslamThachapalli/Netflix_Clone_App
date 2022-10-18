import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class SearchTitleText extends StatelessWidget {
  const SearchTitleText({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.fontSize5 * 4 + Dimensions.fontSize10 * 0.3,
      ),
    );
  }
}
