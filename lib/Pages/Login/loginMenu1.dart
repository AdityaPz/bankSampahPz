import 'package:flutter/material.dart';
import 'package:bank_sampahad/Pages/Admin/NavigationBar.dart';
import 'package:bank_sampahad/Pages/Nasabah/Navigation_bar.dart';
import 'package:bank_sampahad/Pages/SuperAdmin/Navigation_Bar.dart';
import 'package:bank_sampahad/Pages/Penimbang/Navigation_bar.dart';

class loginMenu1 extends StatefulWidget {
  const loginMenu1({super.key});

  @override
  State<loginMenu1> createState() => _loginMenu1State();
}

class _loginMenu1State extends State<loginMenu1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  //String selectedRole = 'Admin';
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();

  Map<String, String> adminCredentials = {
    'admin': '12345',
  };
  Map<String, String> NasabahCredentials = {
    'nasabah': '12345',
  };
  Map<String, String> PenimbangCredentials = {
    'penimbang': '12345',
  };
  Map<String, String> SuperAdminCredentials = {
    'super': '12345',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 249.36,
              width: 433.0,
              // Atur tinggi gambar
              child: Image.asset(
                "assets/img/h1.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 22),

            const Text(
              "MASUK",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 319.0, // Atur lebar container
              height: 58.0,
              decoration: BoxDecoration(
                color: Color(0xFFF1F1F1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                child: TextFormField(
                  controller: cUser,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Username',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Username Masing Kosong';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 319.0, // Atur lebar container
              height: 58.0,
              decoration: BoxDecoration(
                color: Color(0xFFF1F1F1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                child: TextFormField(
                  obscureText: true,
                  controller: cPass,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password Masing Kosong';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 319.0, // Atur lebar container
                  height: 58.0,
                  child: MaterialButton(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      String tUser = cUser.text;
                      String tPass = cPass.text;
                      if (formKey.currentState!.validate()) {
                        if (adminCredentials.containsKey(tUser) &&
                            adminCredentials[tUser] == tPass) {
                          //Perintah untuk memanggil halaman baru
                          //Navigator.phus() ini menindih halaman
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BarNavigationAdmin(),
                              ),
                              (route) => false);
                        } else if (NasabahCredentials.containsKey(tUser) &&
                            NasabahCredentials[tUser] == tPass) {
                          //Perintah untuk memanggil halaman baru
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BarNavigationNasabah(),
                              ),
                              (route) => false);
                        } else if (PenimbangCredentials.containsKey(tUser) &&
                            PenimbangCredentials[tUser] == tPass) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BarNavigationPenimbang(),
                              ),
                              (route) => false);
                        } else if (SuperAdminCredentials.containsKey(tUser) &&
                            SuperAdminCredentials[tUser] == tPass) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BarNavigationSuperAdmin(),
                              ),
                              (route) => false);
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Konfirmasi Login'),
                                content: Text('User atau Password Salah'),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      cUser.text = '';
                                      cPass.text = '';
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('hallo'),
                                  )
                                ],
                              );
                            },
                          );
                        }
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Container(
            //   height: 124.5,
            //   width: 185.0,
            //   alignment: Alignment(5, -0.3),
            //   child: Image.asset(
            //     "assets/pana.png",
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
