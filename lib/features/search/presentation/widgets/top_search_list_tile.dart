import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';

class TopSearchListTile extends StatelessWidget {
  const TopSearchListTile({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: Dimensions.height50 * 1.5,
          width: Dimensions.screenWidth * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius5),
              image: DecorationImage(
                image: NetworkImage('$kTopSearchImageBaseUrl$imageUrl'),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(width: Dimensions.width10),
        Expanded(
          child: Text(
            title,
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
