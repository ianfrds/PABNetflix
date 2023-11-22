import 'package:flutter/material.dart';

class Netflix extends StatelessWidget {
  const Netflix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          bottom: MediaQuery.of(context).size.height * 0.01,
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'NETFLIX',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget picture() {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('/details');
                  },
                  child: Image.asset(
                    'assets/film.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('/details');
                  },
                  child: Image.asset(
                    'assets/film.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('/details');
                  },
                  child: Image.asset(
                    'assets/film.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed('/details');
                  },
                  child: Image.asset(
                    'assets/film.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ),
              ],
            ),
            // You can add more rows as needed
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                header(),
                picture(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
