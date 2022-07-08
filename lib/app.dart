import 'package:flutter/material.dart';

import 'package:just_the_recipev3/ui/theme.dart';
import 'package:just_the_recipev3/ui/screens/home.dart';


class JustTheRecipeApp extends StatelessWidget {
  const JustTheRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      theme: buildTheme(),
      initialRoute: '/',
      routes: {
        // If you're using navigation routes, Flutter needs a base route.
        // We're going to change this route once we're ready with
        // implementation of HomeScreen.
        '/': (context) => const HomeScreen(),
      },
    );
  }
}