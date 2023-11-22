import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
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
            Padding(
              padding: EdgeInsets.only(left: 100),
              child: Text(
                'PROFILE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: TextStyle(color: Colors.white), // Teks warna putih
                    decoration: InputDecoration(
                      hintText: 'PAB 2023',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize
                            .min, // Tambahkan baris ini untuk mengatasi masalah
                        children: [
                          Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.red,
                          ), // Ikon untuk nama
                          SizedBox(width: 10), // Jarak antara ikon dan teks
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: TextStyle(color: Colors.white), // Teks warna putih
                    decoration: InputDecoration(
                      hintText: '08212146829',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize
                            .min, // Tambahkan baris ini untuk mengatasi masalah
                        children: [
                          Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.red,
                          ), // Ikon untuk nama
                          SizedBox(width: 10), // Jarak antara ikon dan teks
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget locationInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: TextStyle(color: Colors.white), // Teks warna putih
                    decoration: InputDecoration(
                      hintText: 'SURABAYA',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize
                            .min, // Tambahkan baris ini untuk mengatasi masalah
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 40,
                            color: Colors.red,
                          ), // Ikon untuk nama
                          SizedBox(width: 10), // Jarak antara ikon dan teks
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
            nameInput(),
            phoneInput(),
            locationInput(),
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
                content(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
