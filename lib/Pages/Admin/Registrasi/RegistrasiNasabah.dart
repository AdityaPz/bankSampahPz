import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bank_sampahad/Components/Appbar.dart';
import 'package:bank_sampahad/Components/Setting.dart';
import 'package:bank_sampahad/Components/TextField.dart';

class RegistrasiNasabah extends StatefulWidget {
  const RegistrasiNasabah({Key? key}) : super(key: key);

  @override
  State<RegistrasiNasabah> createState() => _RegistrasiNasabahState();
}

class _RegistrasiNasabahState extends State<RegistrasiNasabah> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    width: 37,
                    height: 37,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4CAF50),
                      shape: OvalBorder(),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    'registrasi Nasabah',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      width: 384,
                      height: 695,
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
                            fieldText1(
                                size, 'Kode Nasabah', 'kode nasabah', true),
                            fieldText1(
                                size, 'Nama Nasabah', 'Nama Nasabah', true),
                            fieldText1(size, 'Alamat', 'Alamat', true),
                            Row(
                              children: [
                                Expanded(
                                  child: fieldText2(size, 'RW', '12', true),
                                ),
                                Expanded(
                                  child: fieldText2(size, 'RT', '12', true),
                                ),
                              ],
                            ),
                            fieldText1(size, 'No telepon', 'No telepon', true),
                            fieldText1(size, 'PIN', 'PIN', true),
                            fieldText1(size, 'Password', 'Password', true),
                          ],
                        ),
                      ),
                    ),
                    continer('REGISTER', Color(0xFF4CAF50)),
                    //continer('BATAL', Color(0xFFDD3737))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Padding continer(txt, clr) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Container(
        width: 384,
        height: 55,
        decoration: ShapeDecoration(
          color: clr,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
    );
  }
}
