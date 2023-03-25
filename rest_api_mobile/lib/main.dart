import 'package:flutter/material.dart';
import 'package:rest_api_mobile/screens/movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie API App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.deepPurple),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MoviesScreen(),
    );
  }
}

