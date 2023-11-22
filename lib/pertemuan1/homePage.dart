import 'package:flutter/material.dart';
import 'package:tugas_praktikum/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Align(
              child: Text(
                'Welcome to',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              child: Text(
                'PRAKTIKUM PAB 2023',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Align(
              child: Text(
                '1462100008',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    }

    Widget picture() {
      return Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .center, // Menengahkan child di main axis (horizontal)
            crossAxisAlignment: CrossAxisAlignment
                .center, // Menengahkan child di cross axis (vertikal)
            children: [
              Image.asset(
                'assets/saly.png',
                width: 250,
                height: 300,
              )
            ],
          ),
        ),
      );
    }

    Widget nama() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Align(
              child: Text(
                'Gilang Romy Lesmana',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    }

    Widget footer() {
      Color customGreenColor = Color(0xFF00FF00);
      return Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(customGreenColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(150, 45))),
              onPressed: () {
                Navigator.pushNamed(context, '/nav');
              },
              child: Text(
                'Masuk',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              header(),
              picture(),
              nama(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
