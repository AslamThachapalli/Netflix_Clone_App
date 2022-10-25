import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';

class SliverAppBarTitleWidget extends StatelessWidget {
  const SliverAppBarTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Appbar top Logo and icons
        Row(
          children: [
            Image.asset(
              'assets/images/Netflix_logo.png',
              width: 55,
              height: 55,
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
        ),
        //Appbar titles
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _sliverAppBarTitleText('TV Shows'),
            _sliverAppBarTitleText('Movies'),
            _sliverAppBarTitleText('Categories'),
          ],
        )
      ],
    );
  }

  Text _sliverAppBarTitleText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.fontSize15,
      ),
    );
  }
}
