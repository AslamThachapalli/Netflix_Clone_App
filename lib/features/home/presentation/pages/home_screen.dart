import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';
import '../bloc/home_bloc.dart';
import '../widgets/home_screen_section_widget.dart';
import '../widgets/home_screen_top_widget.dart';
import '../widgets/sliver_appbar_title_widget.dart';
import '../widgets/top_10_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(color: Colors.white),
          ),
          loadSuccess: (state) => CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 600,
                toolbarHeight: 80,
                backgroundColor: kBlackColor.withOpacity(0.8),
                title: const SliverAppBarTitleWidget(),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: HomeScreenTopWidget(
                    imageUrl: state.trendingNowImageUrls.first,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(height: Dimensions.height10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                    child: Column(
                      children: [
                        HomeScreenSectionWidget(
                          sectionTitle: 'Released in the Past Year',
                          imageUrls: state.releasedInPastYearImageUrls,
                        ),
                        HomeScreenSectionWidget(
                          sectionTitle: 'Trending Now',
                          imageUrls: state.trendingNowImageUrls,
                        ),
                        Top10Widget(imageUrls: state.top10TvShowsImageUrls),
                        HomeScreenSectionWidget(
                          sectionTitle: 'Tense Dramas',
                          imageUrls: state.tenseDramasImageUrls,
                        ),
                        HomeScreenSectionWidget(
                          sectionTitle: 'South Indian Cinema',
                          imageUrls: state.southIndianCinemaImageUrls,
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
          loadFailure: (state) => Center(
            child: Text(state.message),
          ),
        );
      },
    ));
  }
}
