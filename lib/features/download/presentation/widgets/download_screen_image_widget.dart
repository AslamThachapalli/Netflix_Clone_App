import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class DownloadScreenImageWidget extends StatelessWidget {
  const DownloadScreenImageWidget({
    Key? key,
    required this.angle,
    required this.margin,
    required this.image,
    required this.size,
  }) : super(key: key);

  final double angle;
  final EdgeInsetsGeometry margin;
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
            color: Colors.indigoAccent,
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
