import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/JualSampah/penjualanSampahInduk.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Components/CardRiwayat.dart';
import '../../../Data/curentFormat.dart';

class SampahIndukScreen extends StatefulWidget {
  const SampahIndukScreen({super.key});

  @override
  State<SampahIndukScreen> createState() => _SampahIndukScreenState();
}

class _SampahIndukScreenState extends State<SampahIndukScreen> {
  String query = "";

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
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
                      child: appbar3(context, size, 'Sampah Admin'),
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
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              'Total Sampah',
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
                              onPressed: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (builde) {
                                      return PenjualanSampahIndukScreen();
                                    },
                                  ),
                                ).then((value) {
                                  setState(() {});
                                });
                              },
                              child: Text(
                                "Jual Sampah",
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
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.53,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 10),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return transactionCard(
                        'asdds', 'sdas', 'asdsda', () async {}, size);
                  },
                ),
              ),
            ),
            // FutureBuilder<List<KasModel>>(
            //   future: databaseService!.allDataKas(),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       if (snapshot.data!.length == 0) {
            //         return Padding(
            //           padding: const EdgeInsets.only(top: 200, bottom: 220),
            //           child: Center(
            //             child: Text("DATA KOSONG"),
            //           ),
            //         );
            //       }
            //       final List<KasModel> filteredData =
            //           snapshot.data!.where((item) {
            //         final itemDate = DateTime.parse(item.createdAt.toString());
            //         final formattedDate =
            //             DateFormat('yyyy-MM-dd').format(itemDate);

            //         DateTime? kosong = null;

            //         final formattedDates = selectedDate != null
            //             ? DateFormat('yyyy-MM-dd')
            //                 .format(DateTime.parse(selectedDate!.toString()))
            //             : kosong;

            //         return item.deskripsi!
            //                 .toLowerCase()
            //                 .contains(query.toLowerCase()) &&
            //             (formattedDates == null ||
            //                 formattedDate == formattedDates.toString());
            //       }).toList();
            //       return Padding(
            //         padding: const EdgeInsets.only(left: 35, right: 35),
            //         child: Container(
            //           width: size.width * 0.9,
            //           height: size.height * 0.53,
            //           child: ListView.builder(
            //             physics: BouncingScrollPhysics(),
            //             padding: EdgeInsets.only(top: 10),
            //             itemCount: filteredData.length,
            //             itemBuilder: (BuildContext context, index) {
            //               return transactionCard(
            //                   'asdds', 'sdas', 'asdsda', () async {}, size);
            //             },
            //           ),
            //         ),
            //       );
            //     } else {
            //       return Center(
            //         child: CircularProgressIndicator(
            //           color: Colors.blue,
            //         ),
            //       );
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
