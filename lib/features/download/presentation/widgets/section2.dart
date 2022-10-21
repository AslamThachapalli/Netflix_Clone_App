import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/features/download/presentation/widgets/failure_display_widget.dart';

import '../../../../core/constants/dimensions.dart';
import '../bloc/download_bloc.dart';
import 'download_page_image_url_widget.dart';

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.fontSize20 + Dimensions.fontSize5 / 5,
          ),
        ),
        SizedBox(height: Dimensions.height20),
        Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: Dimensions.fontSize15,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
            height: 1.3,
          ),
        ),
        BlocBuilder<DownloadBloc, DownloadState>(
          builder: (context, state) {
            return SizedBox(
              height: Dimensions.screenWidth * 0.83,
              width: Dimensions.screenWidth,
              child: state.map(
                initial: (_) => const SizedBox.shrink(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadSuccess: (state) => DownloadsPageImageWidget(
                  imageUrlList: state.imageUrlList,
                ),
                loadFailure: (state) => FailureDisplayWidget(
                  failureMessage: state.message,
                ),
              ),
            );
          },
        ),
        SizedBox(height: Dimensions.height20),
      ],
    );
  }
}
