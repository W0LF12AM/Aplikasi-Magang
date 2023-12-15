import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utp_mopro/layar/landing_page.dart';

class splashskrin extends StatefulWidget {
  const splashskrin({super.key});

  @override
  State<splashskrin> createState() => _splashskrinState();
}

class _splashskrinState extends State<splashskrin> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatelanding();
  }

  _navigatelanding() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Landing_Page(
                  title: 'landing',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff041C32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello ',
                    style: GoogleFonts.openSans(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffECB365)),
                  ),
                  Text(
                    'There !',
                    style: GoogleFonts.openSans(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome To My ',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    'Profile',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffECB365)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
