import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';
import '../bloc/search_bloc.dart';
import '../widgets/search_title_text.dart';

class SearchActiveScreen extends StatelessWidget {
  const SearchActiveScreen({
    Key? key,
    required this.state,
  }) : super(key: key);

  final SearchResultLoaded state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleText(title: 'Movies & TV'),
        SizedBox(height: Dimensions.height15),
        Expanded(
          child: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: Dimensions.width10,
            mainAxisSpacing: Dimensions.height10,
            childAspectRatio: 1 / 1.35,
            children: List.generate(
              state.imageUrlList.length,
              (index) => MainCard(imageUrl: state.imageUrlList[index]),
            ),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius10 * 0.7),
          image: DecorationImage(
            image: (imageUrl != ''
                ? NetworkImage('$kImageBaseUrl$imageUrl')
                : const AssetImage('assets/images/error_image.png')) as ImageProvider<Object>,
            fit: imageUrl != '' ? BoxFit.cover : BoxFit.contain,
          )),
    );
  }
}
