import 'package:flutter/material.dart';
import 'package:foode_app/food_details.dart';
import 'package:foode_app/google_map.dart';
import 'package:foode_app/home_screen.dart';
import 'package:foode_app/primary_screen.dart';
import 'package:foode_app/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foode App',
      initialRoute: PraimaryScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        PraimaryScreen.id: (context) => PraimaryScreen(),
        FoodDetails.id: (context) => FoodDetails(),
        GoogleMapScreen.id: (context) => GoogleMapScreen(),
      },
    );
  }
}
