import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/new_&_hot/presentation/bloc/new_and_hot_bloc.dart';
import 'features/search/presentation/bloc/search_bloc.dart';
import 'core/constants/colors.dart';
import 'core/constants/dimensions.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'main_page/main_page.dart';
import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<HomeBloc>()..add(const LoadHomeScreen()),
        ),
        BlocProvider(
          create: (context) => di<SearchBloc>()..add(const LoadSearchIdleScreen()),
        ),
        BlocProvider(create: (context) => di<NewAndHotBloc>())
      ],
      child: GetMaterialApp(
        title: 'Netflix Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.black,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            scaffoldBackgroundColor: backgroundColor,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
            )),
        home: const SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => MainPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ScaleTransition(
          scale: animation,
          child: Image.asset(
            'assets/images/Netflix_logo.png',
            width: Dimensions.width10 * 30,
            height: Dimensions.height10 * 30,
          ),
        ),
      ),
    );
  }
}
