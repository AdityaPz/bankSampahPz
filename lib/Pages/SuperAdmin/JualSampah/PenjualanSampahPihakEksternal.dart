import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:flutter/material.dart';
import '../../../Components/TextField.dart';

class PenjualanSampahPihakEksternalScreen extends StatefulWidget {
  const PenjualanSampahPihakEksternalScreen({super.key});

  @override
  State<PenjualanSampahPihakEksternalScreen> createState() =>
      _PenjualanSampahPihakEksternalScreenState();
}

class _PenjualanSampahPihakEksternalScreenState
    extends State<PenjualanSampahPihakEksternalScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar3(context, size, 'Penjualan Sampah Pihak Eksternal'),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.85,
                      height: 680,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 17,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            fieldText(
                                size, 'Jenis Sampah', 'Jenis Sampa', true),
                            fieldText(
                                size, 'Jenis Barang', 'Jenis Barang', true),
                            fieldText(size, 'Berat (KG)', 'Berat (KG)', true),
                            fieldText(size, 'Harga', 'Harga', true),
                            fieldText(size, 'Tanggal Penjualan',
                                'Tanggal Penjualan', true),
                            fieldText(size, 'Nama Pembeli Sampah',
                                'Nama Pembeli Sampah', true),
                            fieldText(size, 'Catatan Tambahan',
                                'Catatan Tambahan', true),
                          ],
                        ),
                      ),
                    ),
                    buttom(size, 'JUAL SEKARANG', Color(0xFF4CAF50)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Padding buttom(Size size, txt, clr) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: size.width * 0.87,
          height: 55,
          decoration: ShapeDecoration(
            color: clr,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Center(
            child: Text(
              txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
