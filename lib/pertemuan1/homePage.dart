import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? nama;
  String? nbi;

  void data() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? _nama = prefs.getString('nama');
    final String? _nbi = prefs.getString('nbi');

    setState(() {
      nama = _nama;
      nbi = _nbi;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
  }

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
                '$nbi',
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

    Widget namas() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Align(
              child: Text(
                '$nama',
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
              namas(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
