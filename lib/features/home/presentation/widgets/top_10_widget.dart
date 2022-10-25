import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import 'home_screen_list_title.dart';
import 'number_card.dart';

class Top10Widget extends StatelessWidget {
  const Top10Widget({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Title
          const HomeScreenListTitle(
            title: 'Top 10 TV Shows in India Today',
          ),
          SizedBox(height: Dimensions.height10),

          //Numbered Movie Cards
          SizedBox(
            height: Dimensions.height10 * 17,
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return NumberCard(
                  index: index,
                  imageUrls: imageUrls.sublist(0, 10),
                );
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
