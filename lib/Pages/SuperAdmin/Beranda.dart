import 'package:bank_sampahad/Pages/Penimbang/Setor_Sampah.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/JualSampah/SelectJual.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/Kas/Kas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Components/AppBar.dart';
import '../../Components/MenuKategori.dart';
import '../../Components/PointCard.dart';
import 'SusutSampah/SusutSampah.dart';

class BerandaSuperAdmin extends StatefulWidget {
  const BerandaSuperAdmin({super.key});

  @override
  State<BerandaSuperAdmin> createState() => _BerandaSuperAdminState();
}

class _BerandaSuperAdminState extends State<BerandaSuperAdmin> {
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
              PoinCard(size, 'Hi, Induk', 'Kode Penimbang : KP-120200022',
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
                      ],
                    ),
                    menuKategori(
                      [
                        subMenu(size, 'assets/img/truck.png', 'Jual Sampah',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return SelectJual();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                        subMenu(size, 'assets/img/moneywithdrawal.png',
                            'PENARIKAN DANA', () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (builde) {
                          //       return ListSetorSampahScreen();
                          //     },
                          //   ),
                          // ).then((value) {
                          //   setState(() {});
                          // });
                        }),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Container(
                        width: size.width * 0.9,
                        height: 86,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 16,
                              offset: Offset(0, 0),
                              spreadRadius: -6,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/books.png',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Text(
                              'Lihat LAPORAN',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
