import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../widgets/search_title_text.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg';

class SearchActiveScreen extends StatelessWidget {
  const SearchActiveScreen({Key? key}) : super(key: key);

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
              20,
              (index) => MainCard(index: index),
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
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius10 * 0.7),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          )),
    );
  }
}
