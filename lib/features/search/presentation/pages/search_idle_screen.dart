import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../bloc/search_bloc.dart';
import '../widgets/search_title_text.dart';
import '../widgets/top_search_list_tile.dart';

class SearchIdleScreen extends StatelessWidget {
  const SearchIdleScreen({
    Key? key,
    required this.state,
  }) : super(key: key);

  final SearchIdleScreenLoaded state;

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
              itemBuilder: (context, index) => TopSearchListTile(
                    imageUrl: state.imageUrlList[index],
                    title: state.titleList[index],
                  ),
              separatorBuilder: (context, index) => SizedBox(height: Dimensions.height20),
              itemCount: state.imageUrlList.length),
        )
      ],
    );
  }
}
