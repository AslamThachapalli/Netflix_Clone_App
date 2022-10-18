import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/wp3vpSWAIjKSEeYb8F5NSZfONqw.jpg';

class TopSearchListTile extends StatelessWidget {
  const TopSearchListTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: Dimensions.height50 * 1.5,
          width: Dimensions.screenWidth * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius5),
              image: const DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(width: Dimensions.width10),
        Expanded(
          child: Text(
            'Watch Movie',
            style: TextStyle(
              fontSize: Dimensions.fontSize10 * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(
          Icons.play_circle_outline,
          color: Colors.white,
          size: Dimensions.iconSize10 * 5,
        )
      ],
    );
  }
}
