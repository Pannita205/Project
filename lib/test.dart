import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';




class Foods extends StatelessWidget {
  const Foods({Key? key}) : super(key: key);
  static const routeName = '/foodDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ชื่ออาหาร'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/cpsu.png}',
                  width: 500.0,
                  height: 500.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('ชื่อเมนู :' 'ชื่ออาหาร',
                          style: GoogleFonts.kanit(fontSize: 30.0)),
                      Text('ราคา :' 'ราคา' 'บาท',
                          style: GoogleFonts.kanit(fontSize: 30.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}