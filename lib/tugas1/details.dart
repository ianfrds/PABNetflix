import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Color _buttonColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double headerHeight = screenWidth * 0.5;
    double screenPadding = screenWidth * 0.1;

    Widget buildItem(int index) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 121, 27, 20),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: headerHeight,
              child: Image.asset(
                'assets/film.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_buttonColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                onPressed: () {
                  // Ubah warna tombol ketika diklik
                  setState(
                    () {
                      _buttonColor = Colors.green;
                    },
                  );

                  Navigator.pushNamed(context, '/nav');
                },
                child: Text(
                  'Play',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0, // Remove the shadow
        centerTitle: true, // Center the title horizontally
        title: Text(
          'DETAILS MOVIE',
          style: TextStyle(
            color: const Color.fromARGB(255, 238, 2, 2),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, '/netflix');
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) => buildItem(index),
                ),
              ),
              // Add any additional widgets or components here
            ],
          ),
        ),
      ),
    );
  }
}
