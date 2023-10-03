import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Components/AppBar.dart';
import '../../Components/MenuKategori.dart';
import '../../Components/PointCard.dart';

class dasboard extends StatefulWidget {
  const dasboard({super.key});

  @override
  State<dasboard> createState() => _dasboardState();
}

class _dasboardState extends State<dasboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoinCard(
                size,
                'Hi, Yukya',
                'Kode Penimbang : KP-120200022',
                '30,6 Kg',
                '1,6 Kg',
                '23.000',
                Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 20),
                child: Text(
                  'Menu Kategori',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 15, right: 35),
                child: Column(
                  children: [
                    menuKategori([
                      GridView.count(
                        padding: const EdgeInsets.all(25),
                        crossAxisCount: 2,
                        children: <Widget>[
                          Card(
                            margin: const EdgeInsets.all(8),
                            child: InkWell(
                              onTap: () {},
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const <Widget>[
                                    Icon(Icons.add),
                                    Text("Kategori 1"),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Tambahkan kartu lainnya sesuai kebutuhan
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
