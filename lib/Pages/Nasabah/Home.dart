import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Components/AppBar.dart';
import '../../Components/CardRiwayat.dart';
import '../../Components/PointCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var beritaTerkini = [
      "assets/img/banner1.png",
    ];
    return Scaffold(
      appBar: appbar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoinCard(
                size,
                'Hi, Galuh DAP',
                'Kode Nasabah : KN-12010002',
                '12,6 Kg',
                '1,6 Kg',
                '23.000',
                Image.asset(
                  'assets/img/refresh.png',
                  width: 21,
                  height: 21,
                ),
              ),
              Center(
                child: SizedBox(
                  height: 400,
                  width: 500,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 20),
                        child: Text(
                          'Berita Terkini',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 165,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            pauseAutoPlayOnTouch: true,
                            enlargeCenterPage: true,
                            viewportFraction: 0.9,
                          ),
                          items: beritaTerkini.map((title) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(title),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 35, top: 20, right: 25),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
