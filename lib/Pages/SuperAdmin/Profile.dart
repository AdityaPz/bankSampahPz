import 'package:bank_sampahad/Components/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Components/TextField.dart';

class ProfileSuperAdminScreen extends StatefulWidget {
  const ProfileSuperAdminScreen({super.key});

  @override
  State<ProfileSuperAdminScreen> createState() =>
      _ProfileSuperAdminScreenState();
}

class _ProfileSuperAdminScreenState extends State<ProfileSuperAdminScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appbar(context),
        body: SingleChildScrollView(
          child: Center(
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
                                Positioned(
                                  width: 44,
                                  height: 44,
                                  child: Icon(
                                    Icons.create_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                fieldText(size, 'ttl', 'lbl', false),
                fieldText(size, 'ttl', 'lbl', false),
                fieldText(size, 'ttl', 'lbl', false),
                fieldText(size, 'ttl', 'lbl', false),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textField2(size, 'ttl', 'lbl', false),
                      textField2(size, 'ttl', 'lbl', false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
