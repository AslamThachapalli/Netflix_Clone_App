import 'package:flutter/material.dart';

import '../widgets/video_list_item.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(
        10,
        (index) => VideoListItem(index: index),
      ),
    );
  }
}
