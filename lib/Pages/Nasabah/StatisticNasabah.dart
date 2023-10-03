import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:bank_sampahad/Components/CardRiwayat.dart';
import 'package:bank_sampahad/Pages/Nasabah/KapasiatasSampah.dart';
import 'package:bank_sampahad/Pages/Nasabah/PenarikanSaldo.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../Components/Setting.dart';
import '../../Components/AppBar.dart';
import '../../Components/MenuKategori.dart';
import '../../Components/PointCard.dart';

class StatisticNasabah extends StatefulWidget {
  const StatisticNasabah({super.key});

  @override
  State<StatisticNasabah> createState() => _StatisticNasabahState();
}

class _StatisticNasabahState extends State<StatisticNasabah> {
  final datas = [
    {
      'sampah': 'Kertas',
      'berat': 200,
    },
    {
      'sampah': 'Plastik',
      'berat': 50,
    },
    {
      'sampah': 'Botol',
      'berat': 25,
    },
    {
      'sampah': 'Besi',
      'berat': 70,
    },
    {
      'sampah': 'Aluminium',
      'berat': 15,
    }
  ];
  final datas1 = [
    {
      'hasil': 'Penarikan',
      'berat1': 100,
    },
    {
      'hasil': 'Penyetoran',
      'berat1': 300,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appbar(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 7),
                  child: Container(
                    width: 250,
                    height: 250,
                    child: Stack(
                      children: [
                        DChartPie(
                          data: datas1.map((e) {
                            return {
                              'domain': e['hasil'],
                              'measure': e['berat1']
                            };
                          }).toList(),
                          fillColor: (pieData, index) {
                            switch (pieData['domain']) {
                              case 'Penarikan':
                                return Color(0xFFFF3333);
                              default:
                                return Color(0xFF4CAF50);
                            }
                          },
                          donutWidth: 30,
                          labelColor: Colors.white,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '400 Kg',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 32,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Sampah Terkumpul',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120, right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(color: Color(0xFF4CAF50)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          'Penyetoran',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(color: Color(0xFFFF3333)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          'Penarikan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  child: Container(
                    width: 428,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.25,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF5C5C5C),
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 15, right: 35),
                // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    menuKategori1(
                      [
                        subMenu1(size, 'assets/img/iconbaksampah.png',
                            '135.0Kg', 'Kapasitas Bank Sampah', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return KapasiatasSampah();
                              },
                            ),
                          ).then((value) {
                            setState(() {});
                          });
                        }),
                        subMenu1(size, 'assets/img/icondompet.png', '40.000',
                            'Saldo Terkumpul', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return PenarikanSaldo();
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 20, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riwayat Aktivitas',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: 49,
                      height: 18,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFC107),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
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
                                  Color(0xFFE20000),
                                  'Penarikan Saldo',
                                  '23 Juni 2023 - 14:30',
                                  '-5.0000000',
                                  Color(0xFFE20000),
                                ),
                                cardRiwayat(
                                  size,
                                  Color(0xFFE20000),
                                  'Penarikan Saldo',
                                  '23 Juni 2023 - 14:30',
                                  '-5.0000000',
                                  Color(0xFFE20000),
                                ),
                                cardRiwayat(
                                  size,
                                  Color(0xFFE20000),
                                  'Penarikan Saldo',
                                  '23 Juni 2023 - 14:30',
                                  '-5.0000000',
                                  Color(0xFFE20000),
                                ),
                                cardRiwayat(
                                  size,
                                  Color(0xFFE20000),
                                  'Penarikan Saldo',
                                  '23 Juni 2023 - 14:30',
                                  '-5.0000000',
                                  Color(0xFFE20000),
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
        ));
  }
}
