import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Components/AppBar.dart';
import '../../Components/TextField.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
            appbar2('Setting Profile'),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                      width: 178,
                      height: 178,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 178,
                              height: 178,
                              decoration: ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 1.50,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Color(0xFF4CAF50),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6,
                            top: 6,
                            child: Container(
                              width: 166,
                              height: 166,
                              decoration: ShapeDecoration(
                                color: Color(0xFFE6F4F1),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 57,
                            top: 53,
                            child: Container(
                              width: 63.12,
                              height: 72.14,
                              child: Stack(children: []),
                            ),
                          ),
                          Positioned(
                            left: 128,
                            top: 128,
                            child: Container(
                              width: 44,
                              height: 44,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 44,
                                      height: 44,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF4CAF50),
                                        shape: OvalBorder(),
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
                  fieldText(size, 'Nama', 'galuh', false),
                  fieldText(size, 'Kode Pengepul', 'KP-1102231', false),
                  fieldText(size, 'No Telp', '+628332212', false),
                  fieldText(
                      size, 'Alamat', 'Nginden Selatan , Surabaya', false),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textField2(size, 'RT', '05', false),
                        textField2(size, 'RW', '11', false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  width: size.width * 0.9,
                  height: 53,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'SIMPAN',
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
            )
          ],
        ),
      ),
    ));
  }
}
