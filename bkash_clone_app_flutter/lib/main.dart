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
      home: const MyHomePage(title: 'bKash'),
    );
  }
}
