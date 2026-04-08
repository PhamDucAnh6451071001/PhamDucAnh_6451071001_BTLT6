import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../views/about_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Company App',

      // Home mặc định
      initialRoute: '/',

      // Named Routes
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}