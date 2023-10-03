import 'package:flutter/material.dart';

Padding setting(Size size, txt, ontp) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: InkWell(
      onTap: ontp,
      child: Container(
        width: 363,
        height: 75,
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
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(
                width: 38,
                height: 19,
                child: Stack(
                  children: [
                    Positioned(
                      left: 1,
                      top: 2,
                      child: Container(
                        width: 37,
                        height: 15,
                        decoration: ShapeDecoration(
                          color: Color(0xFF4CAF50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 19,
                      top: 0,
                      child: Container(
                        width: 19,
                        height: 19,
                        decoration: ShapeDecoration(
                          color: Color(0xFF89E29D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                txt,
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
      ),
    ),
  );
}
