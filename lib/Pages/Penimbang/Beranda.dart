import 'package:bank_sampahad/Pages/Penimbang/Setor_Sampah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Components/AppBar.dart';
import '../../Components/MenuKategori.dart';
import '../../Components/PointCard.dart';
import 'List_Setor_Sampah.dart';

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
                        subMenu(size, 'assets/img/bin.png', 'SETOR SAMPAH', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return SetorSampah();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                        subMenu(size, 'assets/img/recycle.png', 'LIHAT SETORAN',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return ListSetorSampahScreen();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                      ],
                    ),
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
