import 'package:flutter/material.dart';
import 'package:netflix_clone/features/download/presentation/pages/downloads_screen.dart';
import 'package:netflix_clone/features/fast_laugh/presentation/pages/fast_laugh_screen.dart';
import 'package:netflix_clone/features/home/presentation/pages/home_screen.dart';
import 'package:netflix_clone/features/new_&_hot/presentation/pages/hot&new_screen.dart';
import 'package:netflix_clone/features/search/presentation/pages/search_screen.dart';
import '../core/constants/colors.dart';
import 'widgets/bottom_nav_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final _pages = [
    HomeScreen(),
    HotNewScreen(),
    FastLaughScreen(),
    SearchScreen(),
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
