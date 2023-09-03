import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bkash_clone_app_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bKash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        //splash: Icons.home,
        splash: 'assets/fly2.png',
        nextScreen: const MyHomePage(title: 'bKash'),
        splashTransition: SplashTransition.fadeTransition,
        //pageTransitionType: PageTransitionType.scale,
        backgroundColor: Colors.pink),
      //home: const MyHomePage(title: 'bKash'),
    );
  }
}
