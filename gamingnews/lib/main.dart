import 'package:flutter/material.dart';
import 'screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gaming News App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        Home_Screen.routeName: (context) => const Home_Screen(),
        Discover_Screen.routeName: (context) => const Discover_Screen(),
        Article_Screen.routeName: (context) => const Article_Screen(),
        Profile_screen.routeName: (context) => const Profile_screen(),
        Category_screen.routeName: (context) => const Category_screen(),
      },
    );
  }
}
