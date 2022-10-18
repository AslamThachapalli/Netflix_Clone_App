import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../widgets/search_title_text.dart';
import '../widgets/top_search_list_tile.dart';

class SearchIdleScreen extends StatelessWidget {
  const SearchIdleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(
          title: 'Top Searches',
        ),
        SizedBox(height: Dimensions.height15),
        Expanded(
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => TopSearchListTile(index: index),
              separatorBuilder: (context, index) => SizedBox(height: Dimensions.height20),
              itemCount: 10),
        )
      ],
    );
  }
}
