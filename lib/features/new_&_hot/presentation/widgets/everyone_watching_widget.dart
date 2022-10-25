import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/urls/apis.dart';
import '../bloc/new_and_hot_bloc.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  EveryoneWatchingWidget({Key? key}) : super(key: key);
  int page = 1;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewAndHotBloc>(context).add(
      LoadEveryOnesWatchingScreen(page: page),
    );
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewAndHotBloc>(context).add(
          LoadEveryOnesWatchingScreen(page: page++),
        );
      },
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          return state.maybeMap(
              loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
              everyOnesWatchingScreenLoaded: (state) => Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.height10,
                    ),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 450,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //image container
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          '$kHotAndNewImageBaseUrl${state.imageUrl[index]}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const CustomButtonWidgetEveryoneWatching(
                                      icon: Icons.share,
                                      text: "Share",
                                    ),
                                    SizedBox(width: Dimensions.width10),
                                    const CustomButtonWidgetEveryoneWatching(
                                      icon: Icons.add,
                                      text: "My List",
                                    ),
                                    SizedBox(width: Dimensions.width10),
                                    const CustomButtonWidgetEveryoneWatching(
                                      icon: Icons.play_arrow,
                                      text: "Play",
                                    ),
                                    SizedBox(width: Dimensions.width10),
                                  ],
                                ),
                                SizedBox(height: Dimensions.height15),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                                  child: Text(
                                    state.title[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: Dimensions.fontSize20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: Dimensions.height10),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                                  child: Text(
                                    state.overview[index],
                                    maxLines: 7,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      height: 1.3,
                                      fontSize: Dimensions.fontSize15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(height: Dimensions.height20),
                        itemCount: state.imageUrl.length),
                  ),
              loadFailure: (state) => Center(
                    child: Text(state.message),
                  ),
              orElse: () => const SizedBox.shrink());
        },
      ),
    );
  }
}

class CustomButtonWidgetEveryoneWatching extends StatelessWidget {
  const CustomButtonWidgetEveryoneWatching({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: Dimensions.iconSize10 * 3,
        ),
        SizedBox(height: Dimensions.height10 * 0.3),
        Text(
          text,
          style: TextStyle(
            fontSize: Dimensions.fontSize10,
          ),
        ),
      ],
    );
  }
}
