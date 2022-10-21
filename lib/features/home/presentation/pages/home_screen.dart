import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors.dart';

import '../../../../core/constants/dimensions.dart';
import '../widgets/home_screen_section_widget.dart';
import '../widgets/home_screen_top_widget.dart';
import '../widgets/sliver_appbar_title_widget.dart';
import '../widgets/top_10_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 600,
          toolbarHeight: 80,
          backgroundColor: kBlackColor.withOpacity(0.7),
          title: const SliverAppBarTitleWidget(),
          flexibleSpace: const FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: HomeScreenTopWidget(),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(height: Dimensions.height10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
              child: Column(
                children: const [
                  HomeScreenSectionWidget(sectionTitle: 'Released in the Past Year'),
                  HomeScreenSectionWidget(sectionTitle: 'Trending Now'),
                  Top10Widget(),
                  HomeScreenSectionWidget(sectionTitle: 'Tense Dramas'),
                  HomeScreenSectionWidget(sectionTitle: 'South Indian Cinema'),
                ],
              ),
            )
          ]),
        ),
      ],
    ));
  }
}
