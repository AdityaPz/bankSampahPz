import 'package:flutter/material.dart';
import 'package:bank_sampahad/Pages/Admin/NavigationBar.dart';

class loginMenu extends StatefulWidget {
  const loginMenu({super.key});

  @override
  State<loginMenu> createState() => _loginMenuState();
}

class _loginMenuState extends State<loginMenu> {
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
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
                      String tUser = 'admin';
                      String tPass = '12345';
                      if (formKey.currentState!.validate()) {
                        if (cUser.text == tUser && cPass.text == tPass) {
                          //Perintah untuk memanggil halaman baru
                          //Navigator.phus() ini menindih halaman
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BarNavigationAdmin(),
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
