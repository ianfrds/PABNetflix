import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Saly-42.png',
              width: 300,
              height: 500,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      Color customGreenColor = Color.fromARGB(255, 255, 0, 0);
      return Container(
        padding: EdgeInsets.only(top: 5),
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
                  fixedSize: MaterialStateProperty.all(Size(200, 55))),
              onPressed: () {
                Navigator.pushNamed(context, '/netflix');
              },
              child: Text(
                'Play',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    }

    Widget description() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Align(
              child: Text(
                'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.all(16), // Adjust the overall padding as needed
          child: Container(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the column vertically
              children: [
                Text(
                  'DETAILS MOVIE',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 238, 2, 2),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                header(),
                footer(),
                description(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
