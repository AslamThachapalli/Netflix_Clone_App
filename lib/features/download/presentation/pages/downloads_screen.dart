import 'package:flutter/material.dart';

import '../widgets/section1.dart';
import '../widgets/section2.dart';
import '../widgets/section3.dart';
import '/core/constants/dimensions.dart';
import '../widgets/app_bar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);

  final List _widgetsList = [
    const Section1(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Dimensions.height50),
        child: const AppBarWidget(title: 'Downloads'),
      ),
      body: ListView.separated(
          padding: EdgeInsets.all(Dimensions.height10),
          itemBuilder: (context, index) => _widgetsList[index],
          separatorBuilder: (context, index) => SizedBox(height: Dimensions.height10 * 3.5),
          itemCount: _widgetsList.length),
    );
  }
}
