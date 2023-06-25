import 'package:flutter/material.dart';
import 'package:youtube_kg/modules/home.dart/view/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyWidget(),
    );
  }
}
