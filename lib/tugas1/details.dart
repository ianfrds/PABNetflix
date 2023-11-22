import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double headerHeight = screenWidth * 0.5;
    double screenPadding = screenWidth * 0.1;

    Widget header() {
      return Container(
        width: screenWidth * 0.8,
        height: headerHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/film.png',
              width: screenWidth * 0.8,
              height: headerHeight,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      Color customGreenColor = Color.fromARGB(255, 255, 0, 0);
      return Container(
        width: screenWidth * 0.8,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(customGreenColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            fixedSize: MaterialStateProperty.all(Size(screenWidth * 0.8, 55)),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/nav');
          },
          child: Text(
            'Play',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        width: screenWidth * 0.8,
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenWidth * 0.03, // Adjust vertical padding as needed
        ),
        child: Column(
          children: [
            Align(
              child: Text(
                'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.',
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
          padding: EdgeInsets.all(screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}
