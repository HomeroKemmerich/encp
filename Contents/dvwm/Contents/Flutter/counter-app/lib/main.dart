import 'package:counter_app/pages/HomePage/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  /**
   * Instânciando a classe `MyApp`
   */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }

}