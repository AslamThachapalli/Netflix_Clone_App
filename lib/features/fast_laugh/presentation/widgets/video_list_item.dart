import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/urls/apis.dart';
import 'fast_laugh_image_widget.dart';
import 'gradient_widget.dart';
import 'video_actions_widget.dart';
import 'video_player_widget.dart';

class VideoListItem extends StatefulWidget {
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(
        "$kFastLaughBaseUrl${kFastLaughUrls[widget.index]['videoUrl']}")
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMuted = controller.value.volume == 0;
    return Stack(
      children: [
        const Align(
          alignment: Alignment.center,
          child: GradientWidget(),
        ),
        Align(
          alignment: Alignment.center,
          child: VideoPlayerWidget(controller: controller),
        ),
        if (controller.value.isInitialized) volumeWidget(isMuted),
        videoActions(),
      ],
    );
  }

  Positioned videoActions() {
    return Positioned(
      right: Dimensions.width10,
      bottom: Dimensions.height10 * 8,
      child: Padding(
        padding: EdgeInsets.only(right: Dimensions.width10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FastLaughImageWidget(index: widget.index),
            const VideoActionsWidget(icon: Icons.emoji_emotions_rounded, text: 'LOL'),
            const VideoActionsWidget(icon: Icons.add, text: 'My List'),
            GestureDetector(
              onTap: () {
                Share.share("$kFastLaughBaseUrl${kFastLaughUrls[widget.index]['videoUrl']}");
              },
              child: const VideoActionsWidget(icon: Icons.share, text: 'Share'),
            ),
            VideoActionsWidget(
                icon: controller.value.isPlaying ? Icons.play_arrow : Icons.pause,
                text: controller.value.isPlaying ? 'Playing' : 'Paused'),
          ],
        ),
      ),
    );
  }

  Positioned volumeWidget(bool isMuted) {
    return Positioned(
      left: Dimensions.width10,
      bottom: Dimensions.height10 * 8,
      child: GestureDetector(
        onTap: () => controller.setVolume(isMuted ? 1 : 0),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black.withOpacity(0.6),
          child: Icon(
            isMuted ? Icons.volume_off_sharp : Icons.volume_up_sharp,
            size: Dimensions.iconSize10 * 3,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
