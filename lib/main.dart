import 'package:flutter/material.dart';
import 'package:store_app/src/home_page.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 1, 77, 199)),
      home: const HomePage(),
    );
  }
}


