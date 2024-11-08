import 'package:flutter/material.dart';
import 'package:routinery_clone_coding_with_flutter/MyPage/my_page.dart';
import 'package:routinery_clone_coding_with_flutter/myapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: App(),
    );
  }
}
