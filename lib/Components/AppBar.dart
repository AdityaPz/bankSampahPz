import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bank_sampahad/Pages/Admin/SettingHome.dart';
import '../Data/ColorsData.dart';

void logout(BuildContext context) {
  // Hapus informasi login (token, dll.) atau ubah status login sesuai kebutuhan Anda
  // Contoh tanpa shared_preferences:
  // loggedIn = false;
  var size = MediaQuery.of(context).size;
  // Navigasi ke halaman login atau halaman lain yang sesuai
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (builde) {
        return SettingHome();
      },
    ),
  );
  // Ganti '/login' sesuai dengan rute halaman login Anda
}

AppBar appbar(BuildContext context) {
  return AppBar(
    title: Text("Bank Sampah"),
    backgroundColor: color1,
    actions: [
      InkWell(
        onTap: () {},
        child: SvgPicture.string(
          '''<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9"/><path d="M10.3 21a1.94 1.94 0 0 0 3.4 0"/></svg>''',
        ),
      ),
      Padding(padding: EdgeInsets.all(5)),
      InkWell(
        onTap: () {
          logout(context);
        },
        child: SvgPicture.string(
          '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-settings"><path d="M12.22 2h-.44a2 2 0 0 0-2 2v.18a2 2 0 0 1-1 1.73l-.43.25a2 2 0 0 1-2 0l-.15-.08a2 2 0 0 0-2.73.73l-.22.38a2 2 0 0 0 .73 2.73l.15.1a2 2 0 0 1 1 1.72v.51a2 2 0 0 1-1 1.74l-.15.09a2 2 0 0 0-.73 2.73l.22.38a2 2 0 0 0 2.73.73l.15-.08a2 2 0 0 1 2 0l.43.25a2 2 0 0 1 1 1.73V20a2 2 0 0 0 2 2h.44a2 2 0 0 0 2-2v-.18a2 2 0 0 1 1-1.73l.43-.25a2 2 0 0 1 2 0l.15.08a2 2 0 0 0 2.73-.73l.22-.39a2 2 0 0 0-.73-2.73l-.15-.08a2 2 0 0 1-1-1.74v-.5a2 2 0 0 1 1-1.74l.15-.09a2 2 0 0 0 .73-2.73l-.22-.38a2 2 0 0 0-2.73-.73l-.15.08a2 2 0 0 1-2 0l-.43-.25a2 2 0 0 1-1-1.73V4a2 2 0 0 0-2-2z"/><circle cx="12" cy="12" r="3"/></svg>''',
        ),
      ),
      Padding(padding: EdgeInsets.all(5)),
    ],
  );
}

Padding appbar2(ttl) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 20,
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
          ttl,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

Padding appbar3(BuildContext context, Size size, ttl) {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: size.width * 0.1,
            height: size.height * 0.045,
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
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
          ttl,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
