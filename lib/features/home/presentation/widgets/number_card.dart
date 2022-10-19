import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: Dimensions.width15 * 2),
            Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/6b7swg6DLqXCO3XUsMnv6RwDMW2.jpg'),
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
