import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.index,
    required this.imageUrls,
  }) : super(key: key);

  final int index;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: Dimensions.width15 * 2),
            Container(
              width: Dimensions.width10 * 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                image: DecorationImage(
                  image: NetworkImage('$kImageBaseUrl${imageUrls[index]}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -Dimensions.height20,
          left: 0,
          child: BorderedText(
            strokeWidth: Dimensions.width5,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                fontSize: Dimensions.fontSize10 * 10.5,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
