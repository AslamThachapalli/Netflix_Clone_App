import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/dimensions.dart';
import '../../domain/usecases/debouncer.dart';
import '../bloc/search_bloc.dart';
import 'search_active_screen.dart';
import 'search_idle_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _debouncer = Debouncer(milliseconds: 1000);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  Icons.cancel_rounded,
                  color: Colors.grey,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (value) {
                  if (value.isEmpty && value == '') {
                    BlocProvider.of<SearchBloc>(context).add(const LoadSearchIdleScreen());
                    return;
                  }
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(context).add(StartSearching(value));
                  });
                },
              ),
              SizedBox(height: Dimensions.height10),
              BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
                return Expanded(
                    child: state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loadInProgress: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  searchIdleScreenLoaded: (state) => SearchIdleScreen(state: state),
                  searchResultLoaded: (state) => SearchActiveScreen(state: state),
                  loadFailure: (state) => Center(
                    child: Text(state.message),
                  ),
                ));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
