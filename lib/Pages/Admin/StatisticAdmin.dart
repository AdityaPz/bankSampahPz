import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:bank_sampahad/Components/CardRiwayat.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class StatisticAdmin extends StatefulWidget {
  const StatisticAdmin({super.key});

  @override
  State<StatisticAdmin> createState() => _StatisticAdminState();
}

class _StatisticAdminState extends State<StatisticAdmin> {
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 7),
                  child: Container(
                    width: 250,
                    height: 250,
                    child: Stack(
                      children: [
                        DChartPie(
                          data: datas.map((e) {
                            return {
                              'domain': e['sampah'],
                              'measure': e['berat']
                            };
                          }).toList(),
                          fillColor: (pieData, index) {
                            switch (pieData['domain']) {
                              case 'Kertas':
                                return Color(0xFFB4C1BE);
                              case 'Plastik':
                                return Color(0xFF89E29D);
                              case 'Botol':
                                return Color(0xFF26CAFF);
                              case 'Besi':
                                return Color(0xFF626262);
                              default:
                                return Color(0xFFEBD689);
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
                padding: const EdgeInsets.only(left: 140, right: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(color: Color(0xFFB4C1BE)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          'Kertas',
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
                          decoration: BoxDecoration(color: Color(0xFF89E29D)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          'Plastik',
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
                padding: const EdgeInsets.only(left: 140, right: 132, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(color: Color(0xFF26CAFF)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          'Botol',
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
                          decoration: BoxDecoration(color: Color(0xFF626262)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          'Besi',
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
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 17,
                      height: 17,
                      decoration: BoxDecoration(color: Color(0xFFEBD689)),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Text(
                      'Aluminium',
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
        ));
  }
}
