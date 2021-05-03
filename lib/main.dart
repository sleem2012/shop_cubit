import 'package:ecommerce_cubit/modules/onboarding_screen.dart';
import 'package:ecommerce_cubit/shared/bloc_observer.dart';
import 'package:ecommerce_cubit/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  // DioHelper.int();
  // await CacheHelper.int();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      title: 'SHOP',
      home: OnBoardingScreen(),

    );
  }
}
