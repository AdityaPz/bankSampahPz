import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:bank_sampahad/Components/CardRiwayat.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class StatisticPenimbang extends StatefulWidget {
  const StatisticPenimbang({super.key});

  @override
  State<StatisticPenimbang> createState() => _StatisticPenimbangState();
}

class _StatisticPenimbangState extends State<StatisticPenimbang> {
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

  final sampas = [
    {
      'sampah': 'Kertas',
      'tgl': '20 Juni 2023 04.00',
      'berat': '200',
      'clr': Color(0xFFB4C1BE),
      'clr2': Color(0xFF4CAF50),
    },
    {
      'sampah': 'Kertas',
      'tgl': '20 Juni 2023 04.00',
      'berat': '200',
      'clr': Color(0xFFB4C1BE),
      'clr2': Color(0xFF4CAF50),
    },
    {
      'sampah': 'Kertas',
      'tgl': '20 Juni 2023 04.00',
      'berat': '200',
      'clr': Color(0xFFB4C1BE),
      'clr2': Color(0xFF4CAF50),
    },
    {
      'sampah': 'Plastik',
      'tgl': '20 Juni 2023 04.00',
      'berat': '50',
      'clr': Color(0xFFB4C1BE),
      'clr2': Color(0xFF4CAF50),
    },
    {
      'sampah': 'Botol',
      'tgl': '20 Juni 2023 04.00',
      'berat': '25',
      'clr': Color(0xFFB4C1BE),
      'clr2': Color(0xFF4CAF50),
    },
    {
      'sampah': 'Besi',
      'tgl': '20 Juni 2023 04.00',
      'berat': '70',
      'clr': Color(0xFFB4C1BE),
      'clr2': Color(0xFF4CAF50),
    },
    {
      'sampah': 'Aluminium',
      'tgl': '20 Juni 2023 04.00',
      'berat': '15',
      'clr': Color(0xFFB4C1BE),
      'clr2': Color(0xFF4CAF50),
    }
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
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, right: 100),
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
                padding: const EdgeInsets.only(left: 140, right: 110, top: 5),
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
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Container(
                          width: size.width * 0.9,
                          height: size.height * 0.82,
                          child: ListView.builder(
                            // physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.only(top: 1),
                            itemCount: sampas.length,
                            itemBuilder: (BuildContext context, index) {
                              return cardRiwayat(
                                size,
                                sampas[index]['clr'],
                                sampas[index]['sampah'],
                                sampas[index]['tgl'],
                                sampas[index]['berat'].toString(),
                                sampas[index]['clr2'],
                              );
                            },
                          ),
                        ),
                      )

                      // SizedBox(
                      //   height: 344,
                      //   width: 345,
                      //   child: ListView(
                      //     scrollDirection: Axis.vertical,
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.only(top: 15),
                      //         child: Column(
                      //           children: [
                      //             cardRiwayat(
                      //               Color(0xFFB4C1BE),
                      //               'Setor Sampah Kertas',
                      //               '23 Juni 2023 - 14:30',
                      //               '+3Kg',
                      //               Color(0xFF4CAF50),
                      //             ),
                      //             cardRiwayat(
                      //               Color(0xFFB4C1BE),
                      //               'Setor Sampah Kertas',
                      //               '23 Juni 2023 - 14:30',
                      //               '+3Kg',
                      //               Color(0xFF4CAF50),
                      //             ),
                      //             cardRiwayat(
                      //               Color(0xFFB4C1BE),
                      //               'Setor Sampah Kertas',
                      //               '23 Juni 2023 - 14:30',
                      //               '+3Kg',
                      //               Color(0xFF4CAF50),
                      //             ),
                      //             cardRiwayat(
                      //               Color(0xFFB4C1BE),
                      //               'Setor Sampah Kertas',
                      //               '23 Juni 2023 - 14:30',
                      //               '+3Kg',
                      //               Color(0xFF4CAF50),
                      //             ),
                      //             cardRiwayat(
                      //               Color(0xFFB4C1BE),
                      //               'Setor Sampah Kertas',
                      //               '23 Juni 2023 - 14:30',
                      //               '+3Kg',
                      //               Color(0xFF4CAF50),
                      //             ),
                      //             cardRiwayat(
                      //               Color(0xFFB4C1BE),
                      //               'Setor Sampah Kertas',
                      //               '23 Juni 2023 - 14:30',
                      //               '+3Kg',
                      //               Color(0xFF4CAF50),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      ),
                ),
              ),
            ],
          ),
        ));
  }
}
