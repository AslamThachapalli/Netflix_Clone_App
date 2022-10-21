import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/dimensions.dart';

import '../../../../core/constants/colors.dart';
import 'video_actions_widget.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width10,
              vertical: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.6),
                  child: Icon(
                    Icons.volume_off_sharp,
                    size: Dimensions.iconSize10 * 3,
                    color: kWhiteColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: Dimensions.width10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: Dimensions.height10),
                        child: CircleAvatar(
                          radius: Dimensions.radius5 * 5,
                          backgroundImage: NetworkImage(
                              'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nQKW2sabIClUsrQl3Y3i5LQgf5l.jpg'),
                        ),
                      ),
                      const VideoActionsWidget(icon: Icons.emoji_emotions_rounded, text: 'LOL'),
                      const VideoActionsWidget(icon: Icons.add, text: 'My List'),
                      const VideoActionsWidget(icon: Icons.share, text: 'Share'),
                      const VideoActionsWidget(icon: Icons.play_arrow_rounded, text: 'Play'),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
