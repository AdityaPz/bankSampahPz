import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/JualSampah/SampahInduk.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/JualSampah/SampahPihakEksternal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SelectJual extends StatefulWidget {
  const SelectJual({super.key});

  @override
  State<SelectJual> createState() => _SelectJualState();
}

class _SelectJualState extends State<SelectJual> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 10, bottom: 20),
            child: appbar3(context, size, 'Jaul Sampah'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builde) {
                      return SampahIndukScreen();
                    },
                  ),
                ).then((value) {
                  setState(() {});
                });
              },
              child: Container(
                width: 342,
                height: 72,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 16,
                      offset: Offset(0, 0),
                      spreadRadius: -6,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 25),
                  child: Text(
                    'Sampah Admin',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builde) {
                      return SampahPihakEksternalScreen();
                    },
                  ),
                ).then((value) {
                  setState(() {});
                });
              },
              child: Container(
                width: 342,
                height: 72,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 16,
                      offset: Offset(0, 0),
                      spreadRadius: -6,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 25),
                  child: Text(
                    'Sampah Pihak Eksternal',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
