import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';
import '../../../../core/urls/apis.dart';
import '../bloc/new_and_hot_bloc.dart';

class ComingSoonWidget extends StatelessWidget {
  ComingSoonWidget({Key? key}) : super(key: key);
  int page = 1;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NewAndHotBloc>(context).add(
      LoadComingSoonScreen(page: page),
    );
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewAndHotBloc>(context).add(LoadComingSoonScreen(page: page++));
      },
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          return state.maybeMap(
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
            comingSoonScreenLoaded: (state) => Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
              child: ListView.separated(
                  itemCount: state.imageUrl.length,
                  separatorBuilder: (context, index) => SizedBox(height: Dimensions.height10),
                  itemBuilder: (context, index) {
                    final date = DateTime.parse(state.date[index]);
                    final formattedDate = DateFormat.yMMMMd('en_US').format(date);
                    final day = DateFormat.EEEE().format(date);
                    return Row(
                      children: [
                        SizedBox(
                          height: 450,
                          width: 50,
                          child: Column(
                            children: [
                              //date
                              Text(
                                formattedDate.split(' ').first.substring(0, 3),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSize15,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                state.date[index].split('-')[1],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSize15 * 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 450,
                          width: Dimensions.screenWidth - 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //image container
                              Container(
                                height: 200,
                                width: Dimensions.screenWidth - 50,
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
                                children: [
                                  //title
                                  Expanded(
                                    child: Text(
                                      state.title[index],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: Dimensions.fontSize10 * 2.5,
                                        letterSpacing: -2,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.width10),
                                  const CustomButtonWidgetComingSoon(
                                    icon: Icons.all_out_sharp,
                                    text: "Remind Me",
                                  ),
                                  SizedBox(width: Dimensions.width10),
                                  const CustomButtonWidgetComingSoon(
                                    icon: Icons.info_outline,
                                    text: "Info",
                                  ),
                                  SizedBox(width: Dimensions.width10),
                                ],
                              ),
                              SizedBox(height: Dimensions.height5),
                              //coming day
                              Text(
                                'Coming on $day',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSize15,
                                ),
                              ),
                              SizedBox(height: Dimensions.height15),
                              //title
                              Text(
                                state.title[index],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: Dimensions.fontSize20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: Dimensions.height10),
                              //overview
                              Text(
                                state.overview[index],
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: Dimensions.fontSize15,
                                  height: 1.3,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
            loadFailure: (state) => Center(
              child: Text(state.message),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

class CustomButtonWidgetComingSoon extends StatelessWidget {
  const CustomButtonWidgetComingSoon({
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
          size: Dimensions.iconSize10 * 2,
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
