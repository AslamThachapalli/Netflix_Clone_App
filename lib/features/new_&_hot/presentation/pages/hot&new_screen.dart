import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors.dart';

import '../../../../core/constants/dimensions.dart';
import '../widgets/coming_soon_widget.dart';
import '../widgets/everyone_watching_widget.dart';

class HotNewScreen extends StatelessWidget {
  const HotNewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'New & Hot',
            style: TextStyle(
              fontSize: Dimensions.fontSize15 * 2,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: [
            Icon(
              Icons.cast,
              size: Dimensions.iconSize15 * 2,
              color: Colors.white,
            ),
            SizedBox(width: Dimensions.width10),
            SizedBox(
              height: 40,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: Dimensions.height10 * 0.3),
                height: Dimensions.height15 * 2,
                width: Dimensions.width15 * 2,
                color: Colors.white,
              ),
            ),
            SizedBox(width: Dimensions.width10),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(Dimensions.height15),
            child: SizedBox(
              height: 35,
              child: TabBar(
                isScrollable: true,
                labelColor: kBlackColor,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.fontSize15,
                ),
                unselectedLabelColor: kWhiteColor,
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.fontSize15,
                ),
                indicator: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                tabs: const [
                  Tab(
                    child: Text(
                      '🍿 Coming Soon',
                    ),
                  ),
                  Tab(
                    child: Text(
                      "👀 Everyone's Watching",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ComingSoonWidget(),
            EveryoneWatchingWidget(),
          ],
        ),
      ),
    );
  }
}
