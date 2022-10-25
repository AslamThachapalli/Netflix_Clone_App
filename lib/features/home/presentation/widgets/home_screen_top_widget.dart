import 'package:flutter/material.dart';

import 'custom_button_widget.dart';
import 'home_screen_image_with_gradient.dart';
import 'play-button_widget.dart';

class HomeScreenTopWidget extends StatelessWidget {
  const HomeScreenTopWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HomeScreenImageWithGradient(
          imageUrl: imageUrl,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomButtonWidget(
                icon: Icons.add,
                text: 'My List',
              ),
              PlayButtonWidget(),
              CustomButtonWidget(
                icon: Icons.info_outline,
                text: 'Info',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
