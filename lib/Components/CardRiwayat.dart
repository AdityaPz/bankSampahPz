import 'package:flutter/material.dart';

Padding cardRiwayat(Size size, clr1, ttl, date, number, clr2) {
  return Padding(
    padding: const EdgeInsets.only(top: 7),
    child: Stack(
      children: [
        Container(
          width: size.width * 0.9,
          height: 58,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 17,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: ShapeDecoration(
                      color: clr1,
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '+${number}',
                      style: TextStyle(
                        color: clr2,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 50,
          top: 18,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sampah ${ttl}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: Color(0xFF7F7F7F),
                  fontSize: 7,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Padding transactionCard(ttl, tgl, rp, hapus, Size size) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Stack(
      children: [
        Container(
          width: 342,
          height: 72,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 16,
                offset: Offset(0, 0),
                spreadRadius: -6,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    ttl,
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.15,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tgl,
                      style: TextStyle(
                        color: Color(0xFFA8A8A8),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      rp,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF1EB927),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: size.width * 0.765,
          top: size.height * 0.01,
          child: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: hapus,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    "Hapus",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
            child: Icon(
              Icons.more_vert,
              size: 20,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}
