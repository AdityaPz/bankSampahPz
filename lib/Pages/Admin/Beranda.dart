import 'package:bank_sampahad/Pages/Admin/ListNasabah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bank_sampahad/Pages/Admin/ListNasabah.dart';
import 'package:bank_sampahad/Pages/Admin/ListPengepul.dart';
import 'package:bank_sampahad/Pages/Admin/TambahPengguna.dart';
import '../../Components/AppBar.dart';
import '../../Components/MenuKategori.dart';
import '../../Components/PointCard.dart';
import 'SusutSampah/SusutSampah.dart';
import 'Kas/Kas.dart';

class BerandaPenimbang extends StatefulWidget {
  const BerandaPenimbang({super.key});

  @override
  State<BerandaPenimbang> createState() => _BerandaPenimbangState();
}

class _BerandaPenimbangState extends State<BerandaPenimbang> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoinCard(size, 'Hi, Yukya', 'Kode Penimbang : KP-120200022',
                  '30,6 Kg', '1,6 Kg', '23.000', Container()),
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 20),
                child: Text(
                  'Menu Kategori',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 15, right: 35),
                child: Column(
                  children: [
                    menuKategori(
                      [
                        subMenu(
                            size, 'assets/img/Listnasabah.png', 'LIST NASABAH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return ListNasabah();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                        subMenu(size, 'assets/img/regitsernasabah.png',
                            'TAMBAH PENGGUNA', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return TambahPengguna();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                      ],
                    ),
                    menuKategori(
                      [
                        subMenu(
                            size, 'assets/img/shortlist.png', 'LIST PENGEPUL',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return ListPengepul();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                        subMenu(size, 'assets/img/Money.png', 'KAS', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return KasScreen();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                      ],
                    ),
                    menuKategori(
                      [
                        subMenu(size, 'assets/img/Kilogram.png', 'SUSUT SAMPAH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return SusutSampahScreen();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                        subMenu(size, 'assets/img/moneywithdrawal.png',
                            'PENARIKAN SALDO', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return SusutSampahScreen();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                      ],
                    ),
                    const SizedBox(height: 15.0)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
