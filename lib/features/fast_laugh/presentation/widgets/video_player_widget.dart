import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;
  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized
        ? GestureDetector(
            onTap: () => controller.value.isPlaying ? controller.pause() : controller.play(),
            child: buildVideoPlayer(),
          )
        : const Center(
            child: CircularProgressIndicator(color: Colors.black),
          );
  }

  Widget buildVideoPlayer() {
    return AspectRatio(
      aspectRatio: 9 / 14,
      child: VideoPlayer(controller),
    );
  }
}
