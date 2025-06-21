import 'package:first_app/pages/00_home_page.dart';
import 'package:first_app/pages/01_profile_page.dart';
import 'package:first_app/pages/02_list_view_page.dart';
import 'package:first_app/pages/99_blank_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: '/0',
      routes: {
        '/0': (context) => GridViewPage(),
        '/1': (context) => MyHomePage(title: 'Home'),
        '/2': (context) => ListViewPage(),
        '/3': (context) => BlankPage(),
      },
    );
  }
}
