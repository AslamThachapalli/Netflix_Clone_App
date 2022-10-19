import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class HomeScreenImageWithGradient extends StatelessWidget {
  const HomeScreenImageWithGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Dimensions.height50 * 12,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vNVFt6dtcqnI7hqa6LFBUibuFiw.jpg'),
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
