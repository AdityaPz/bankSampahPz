import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:bank_sampahad/Components/CardRiwayat.dart';
import 'package:bank_sampahad/Pages/Nasabah/KapasiatasSampah.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../Components/Setting.dart';
import '../../Components/AppBar.dart';
import '../../Components/MenuKategori.dart';
import '../../Components/PointCard.dart';
import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../Components/CardRiwayat.dart';
import '../../../Data/curentFormat.dart';

class PenarikanSaldo extends StatefulWidget {
  const PenarikanSaldo({super.key});

  @override
  State<PenarikanSaldo> createState() => _PenarikanSaldoState();
}

class _PenarikanSaldoState extends State<PenarikanSaldo> {
  String query = "";

  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appbar(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  width: size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 16,
                        offset: Offset(0, 0),
                        spreadRadius: -6,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40, left: 10),
                        child: appbar3(context, size, 'Kas'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 70, left: 30, right: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Tanggal Transaksi: '),
                                  TextButton(
                                    onPressed: () async {
                                      final DateTime? picked =
                                          await showDatePicker(
                                        context: context,
                                        initialDate:
                                            selectedDate ?? DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2101),
                                      );
                                      if (picked != null &&
                                          picked != selectedDate) {
                                        setState(() {
                                          selectedDate = picked;
                                        });
                                      }
                                    },
                                    child: Text(
                                      selectedDate == null
                                          ? 'Pilih Tanggal'
                                          : DateFormat('dd MMM yyyy')
                                              .format(selectedDate!),
                                    ),
                                  ),
                                  if (selectedDate != null)
                                    IconButton(
                                      icon: Icon(Icons.delete),
                                      onPressed: () {
                                        setState(() {
                                          selectedDate = null;
                                        });
                                      },
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                'SALDO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(
                                CurrencyFormat.convertToIdr(23333, 0),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 32,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            // FutureBuilder<int>(
                            //   future: saldoController.allKas(),
                            //   builder: (context, snapshot) {
                            //     if (snapshot.connectionState ==
                            //         ConnectionState.waiting) {
                            //       return CircularProgressIndicator();
                            //     } else {
                            //       return Padding(
                            //         padding: const EdgeInsets.only(bottom: 20),
                            //         child: Text(
                            //           CurrencyFormat.convertToIdr(
                            //               snapshot.data ?? 0, 0),
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //             color: Color(0xFF333333),
                            //             fontSize: 32,
                            //             fontFamily: 'Poppins',
                            //             fontWeight: FontWeight.w600,
                            //           ),
                            //         ),
                            //       );
                            //     }
                            //   },
                            // ),
                            Container(
                              width: 166,
                              height: 37,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFF89E29D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () async {},
                                child: Text(
                                  "PENARIKAN DANA",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 1.15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
