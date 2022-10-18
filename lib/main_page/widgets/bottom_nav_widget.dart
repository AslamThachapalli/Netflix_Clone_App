import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/colors.dart';

import '../../core/constants/dimensions.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
            unselectedFontSize: Dimensions.fontSize10,
            selectedFontSize: Dimensions.fontSize10,
            currentIndex: newIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: 'New & Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: 'Fast Laugh',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: 'Downloads',
              ),
            ]);
      },
    );
  }
}
