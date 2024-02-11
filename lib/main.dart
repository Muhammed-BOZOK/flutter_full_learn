
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/week2/stateless/home_stateless_view.dart';
//import 'package:flutter_full_learn/demos/stack_learn.dart';



void main() {
  runApp(const MyApp()); //ali dayi
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: false,
          // systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0, // gölge efekti. yükseklik
        )
      ),
      home: HomeViewStateful(),
    );
  }
}
