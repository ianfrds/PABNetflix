import 'package:flutter/material.dart';

class Netflix extends StatelessWidget {
  const Netflix({super.key});
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Align(
              child: Text(
                'NETFLIX',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget picture() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
              child: Image.asset(
                'assets/Saly-42.png',
                width: 200,
                height: 300,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
              child: Image.asset(
                'assets/Saly-42.png',
                width: 200,
                height: 300,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              header(),
              picture(),
            ],
          ),
        ),
      ),
    );
  }
}
