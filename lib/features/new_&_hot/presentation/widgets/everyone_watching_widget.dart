import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/dimensions.dart';

import '../../../../core/constants/colors.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.height10,
      ),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 450,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image container
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/gUNRlH66yNDH3NQblYMIwgZXJ2u.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black.withOpacity(0.6),
                          child: Icon(
                            Icons.volume_off_sharp,
                            size: Dimensions.iconSize10 * 2.5,
                            color: kWhiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CustomButtonWidgetEveryoneWatching(
                        icon: Icons.share,
                        text: "Share",
                      ),
                      SizedBox(width: Dimensions.width10),
                      const CustomButtonWidgetEveryoneWatching(
                        icon: Icons.add,
                        text: "My List",
                      ),
                      SizedBox(width: Dimensions.width10),
                      const CustomButtonWidgetEveryoneWatching(
                        icon: Icons.play_arrow,
                        text: "Play",
                      ),
                      SizedBox(width: Dimensions.width10),
                    ],
                  ),
                  SizedBox(height: Dimensions.height15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                    child: Text(
                      'Lost In Space',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.height10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                    child: Text(
                      'Stay tuned. Stay tuned. Stay tuned.Stay tuned.Stay tuned.Stay tuned.Stay tuned. Stay tuned.Stay tuned.Stay tuned.Stay tuned.Stay tuned.Stay tuned. Stay tuned.Stay tuned.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: Dimensions.height10),
          itemCount: 10),
    );
  }
}

class CustomButtonWidgetEveryoneWatching extends StatelessWidget {
  const CustomButtonWidgetEveryoneWatching({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: Dimensions.iconSize10 * 3,
        ),
        SizedBox(height: Dimensions.height10 * 0.3),
        Text(
          text,
          style: TextStyle(
            fontSize: Dimensions.fontSize10,
          ),
        ),
      ],
    );
  }
}
