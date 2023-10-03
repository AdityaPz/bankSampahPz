import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bank_sampahad/pages/Login/loginMenu1.dart';
import '../../Components/AppBar.dart';
import '../../Components/Setting.dart';
import '../../Components/TextField.dart';

class SettingHome extends StatefulWidget {
  const SettingHome({super.key});

  @override
  State<SettingHome> createState() => _SettingHomeState();
}

class _SettingHomeState extends State<SettingHome> {
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
            appbar2('Setting'),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    setting(size, 'Aktifkan Notifikasi', () {}),
                    setting(size, 'Suara Notifikasi Aktif', () {}),
                    setting(size, 'Ganti Password', () {}),
                    setting(size, 'Keluar Akun', () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (builde) {
                            return loginMenu1();
                          },
                        ),
                        (Route) => false,
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
