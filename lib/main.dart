import 'package:flutter/material.dart';
import 'package:tugas_praktikum/navigation.dart';
import 'package:tugas_praktikum/tugas1/details.dart';
import 'package:tugas_praktikum/tugas1/netflix.dart';
import 'package:tugas_praktikum/pertemuan1/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomePage(),
          '/nav': (context) => MainPage(),
          '/netflix': (context) => Netflix(),
          '/details': (context) => Detail(),
        },
      ),
    );
  }
}
