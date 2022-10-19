import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../widgets/home_screen_section_widget.dart';
import '../widgets/home_screen_top_widget.dart';
import '../widgets/top_10_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
        children: [
          HomeScreenTopWidget(),
          SizedBox(height: Dimensions.height10),
          HomeScreenSectionWidget(sectionTitle: 'Released in the Past Year'),
          HomeScreenSectionWidget(sectionTitle: 'Trending Now'),
          Top10Widget(),
          HomeScreenSectionWidget(sectionTitle: 'Tense Dramas'),
          HomeScreenSectionWidget(sectionTitle: 'South Indian Cinema'),
        ],
      ),
    );
  }
}
