import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';

class HomeScreenImageWithGradient extends StatelessWidget {
  const HomeScreenImageWithGradient({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Dimensions.height50 * 12,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage('$kHomePageImageBaseUrl$imageUrl'),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          height: Dimensions.height50 * 12,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.75, 1],
          )),
        ),
      ],
    );
  }
}
