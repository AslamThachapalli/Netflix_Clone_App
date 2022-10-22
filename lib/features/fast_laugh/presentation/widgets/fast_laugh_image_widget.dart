import 'package:flutter/material.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';

class FastLaughImageWidget extends StatelessWidget {
  const FastLaughImageWidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.height10),
      child: Container(
        height: Dimensions.height5 * 10,
        width: Dimensions.width5 * 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius5 * 5),
            color: Colors.black.withOpacity(0.5),
            image: DecorationImage(
              image: NetworkImage(
                "$kFastLaughBaseUrl${kFastLaughUrls[index]['imageUrl']}",
              ),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
