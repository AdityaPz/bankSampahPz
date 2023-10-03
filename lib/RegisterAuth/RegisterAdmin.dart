import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> registerUser(
  String nama_bs,
  String no_telp,
  String password,
  String rw,
  String rt,
) async {
  final response = await http.post(
    Uri.parse('http://154.56.60.253:4001/auth/reg/adm'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(<String, String>{
      // 'name': name,
      // 'email': email,
      // 'password': password,

      "nama_bs": nama_bs,
      "no_telp": no_telp,
      "password": password,
      "rw": rw,
      "rt": rt,
    }),
  );

  if (response.statusCode == 200) {
    // Registrasi berhasil
    print('Pengguna berhasil terdaftar.');
  } else {
    // Jika registrasi gagal
    print('Gagal mendaftarkan pengguna.');
  }
}
