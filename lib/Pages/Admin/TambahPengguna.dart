import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Components/AppBar.dart';
import '../../Components/Setting.dart';
import '../../Components/TextField.dart';
import 'Registrasi/RegistrasiNasabah.dart';
import 'Registrasi/RegistrasiPengepul.dart';

class TambahPengguna extends StatefulWidget {
  const TambahPengguna({super.key});

  @override
  State<TambahPengguna> createState() => _TambahPenggunaState();
}

class _TambahPenggunaState extends State<TambahPengguna> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar3(context, size, 'Tambah Pengguna'),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    setting(
                      size,
                      'Tambah Nasabah',
                      () {
                        print("sadsa");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builde) {
                              return RegistrasiNasabah();
                            },
                          ),
                        ).then((value) {
                          setState(() {});
                        });
                      },
                    ),
                    setting(
                      size,
                      'Tambah Pengepul',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builde) {
                              return RegistrasiPengepul();
                            },
                          ),
                        ).then((value) {
                          setState(() {});
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
