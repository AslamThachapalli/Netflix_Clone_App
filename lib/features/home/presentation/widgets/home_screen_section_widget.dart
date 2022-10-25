import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';
import 'home_screen_list_title.dart';

class HomeScreenSectionWidget extends StatelessWidget {
  const HomeScreenSectionWidget({
    Key? key,
    required this.sectionTitle,
    required this.imageUrls,
  }) : super(key: key);

  final String sectionTitle;
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Title
          HomeScreenListTitle(
            title: sectionTitle,
          ),
          SizedBox(height: Dimensions.height10),

          //Movie Cards
          SizedBox(
            height: Dimensions.height10 * 17,
            width: double.maxFinite,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: Dimensions.width10 * 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: DecorationImage(
                      image: NetworkImage('$kImageBaseUrl${imageUrls[index]}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: Dimensions.width10),
              itemCount: imageUrls.length,
            ),
          ),
        ],
      ),
    );
  }
}
