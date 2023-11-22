import 'package:flutter/material.dart';
import 'package:tugas_praktikum/pertemuan1/homePage.dart';
import 'package:tugas_praktikum/tugas1/details.dart';
import 'package:tugas_praktikum/tugas1/netflix.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor:
            Color.fromARGB(255, 2, 2, 2), // Set the selected item color
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movie',
          ),
        ],
      );
    }

    body() {
      switch (currentIndex) {
        case 0:
          return Netflix();
        case 1:
          return Detail();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
