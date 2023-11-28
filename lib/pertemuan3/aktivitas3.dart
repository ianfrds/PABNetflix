import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas_praktikum/pertemuan1/homePage.dart';

class Pendaftaran extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController nbiController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget picture() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/otak.jpeg',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'WELCOME',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'PRAKTIKUM PAB 2023',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      );
    }

    Widget form() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: namaController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Masukan Nama',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 92, 91, 91),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: nbiController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'NBI tidak boleh kosong';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Masukan NBI',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 92, 91, 91),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: kelasController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kelas Praktikum tidak boleh kosong';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Kelas Praktikum',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 92, 91, 91),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget tombol() {
      Color customGreenColor = Color.fromARGB(255, 95, 161, 95);

      return Container(
        padding: EdgeInsets.only(top: 100),
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
                fixedSize: MaterialStateProperty.all(Size(350, 55)),
              ),
              onPressed: () async {
                final FormState? form = _formKey.currentState;
                if (form != null && form.validate()) {
                  // print('NBI: ${nbiController.text}');
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  await prefs.setString('nama', namaController.text);
                  await prefs.setString('nbi', nbiController.text);
                  await prefs.setString('kelas', kelasController.text);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
              },
              child: Text(
                'DAFTAR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              picture(),
              header(),
              form(),
              tombol(),
            ],
          ),
        ),
      ),
    );
  }
}
