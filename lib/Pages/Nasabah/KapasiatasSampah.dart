import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Components/AppBar.dart';

class KapasiatasSampah extends StatefulWidget {
  const KapasiatasSampah({super.key});

  @override
  State<KapasiatasSampah> createState() => _KapasiatasSampahState();
}

class _KapasiatasSampahState extends State<KapasiatasSampah> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 169.0,
                height: 172.0,
                decoration: BoxDecoration(
                  color: Color(
                      0xFFE6F4F1), // Perbaikan warna (FF adalah untuk opasitas penuh)
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // border: Border.all(
                  //     // color: const Color.fromRGBO(0, 0, 0, 1),
                  //     // width: 2.0,
                  //     ),
                ),
                child: Image.asset(
                  'assets/img/tempatSampah.png', // Ubah sesuai dengan lokasi gambar Anda
                  width: 100.0, // Sesuaikan ukuran gambar sesuai kebutuhan
                  height: 100.0,
                ),
              ),
              Container(
                child: Text(
                  "15.0 Kg",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
                padding: EdgeInsets.all(16.0),
              ),
              Container(
                child: Text("Kapasitas Terisi"),
              ),
              Container(
                child: SizedBox(
                  width: 319.0, // Atur lebar container
                  height: 58.0,
                  child: MaterialButton(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: const Text(
                        "KEMBALI KE BERANDA",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
