import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bank_sampahad/Components/CardRiwayat.dart';

import '../../Components/AppBar.dart';
import '../../Components/Setting.dart';
import '../../Components/TextField.dart';

class PenarikanSaldo extends StatefulWidget {
  const PenarikanSaldo({super.key});

  @override
  State<PenarikanSaldo> createState() => _PenarikanSaldoState();
}

class _PenarikanSaldoState extends State<PenarikanSaldo> {
  void updateList(String value) {}

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
            appbar2('Penarikan Saldo'),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF808080),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search Invoice",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                    // view list atau daftar list
                    SizedBox(
                      height: 20.0,
                    ),
                    //dExpanded(child:)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Riwayat Aktivitas',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: size.width * 0.9,
                  height: 344,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDCEAE7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x28000000),
                        blurRadius: 1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: SizedBox(
                    height: 344,
                    width: 345,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              cardRiwayat(
                                size,
                                Color(0xFFB4C1BE),
                                'Setor Sampah Kertas',
                                '23 Juni 2023 - 14:30',
                                '+3Kg',
                                Color(0xFF4CAF50),
                              ),
                              cardRiwayat(
                                size,
                                Color(0xFFB4C1BE),
                                'Setor Sampah Kertas',
                                '23 Juni 2023 - 14:30',
                                '+3Kg',
                                Color(0xFF4CAF50),
                              ),
                              cardRiwayat(
                                size,
                                Color(0xFFB4C1BE),
                                'Setor Sampah Kertas',
                                '23 Juni 2023 - 14:30',
                                '+3Kg',
                                Color(0xFF4CAF50),
                              ),
                              cardRiwayat(
                                size,
                                Color(0xFFB4C1BE),
                                'Setor Sampah Kertas',
                                '23 Juni 2023 - 14:30',
                                '+3Kg',
                                Color(0xFF4CAF50),
                              ),
                              cardRiwayat(
                                size,
                                Color(0xFFB4C1BE),
                                'Setor Sampah Kertas',
                                '23 Juni 2023 - 14:30',
                                '+3Kg',
                                Color(0xFF4CAF50),
                              ),
                              cardRiwayat(
                                size,
                                Color(0xFFB4C1BE),
                                'Setor Sampah Kertas',
                                '23 Juni 2023 - 14:30',
                                '+3Kg',
                                Color(0xFF4CAF50),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
