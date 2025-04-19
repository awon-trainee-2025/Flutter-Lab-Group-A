//import 'package:clothing_app/views/navigation_views/home_page_view.dart';
import 'package:clothing_app/views/start_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vintage Clothing Store Application',
      home: const StartPageView(),
    );
  }
}