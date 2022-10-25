import 'package:flutter/material.dart';

import '../features/download/presentation/pages/downloads_screen.dart';
import '../features/fast_laugh/presentation/pages/fast_laugh_screen.dart';
import '../features/home/presentation/pages/home_screen.dart';
import '../features/new_&_hot/presentation/pages/hot&new_screen.dart';
import '../features/search/presentation/pages/search_screen.dart';
import '../core/constants/colors.dart';
import 'widgets/bottom_nav_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final _pages = [
    const HomeScreen(),
    const HotNewScreen(),
    const FastLaughScreen(),
    const SearchScreen(),
    DownloadsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, newIndex, _) {
            return _pages[newIndex];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
