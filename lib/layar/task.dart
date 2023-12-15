import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class task_page extends StatefulWidget {
  task_page({Key? key, required this.title}) : super(key: key);
  var title;
  @override
  State<task_page> createState() => _task_pageState();
}

class _task_pageState extends State<task_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff041C32),
        leading: Icon(
          Icons.back_hand,
          color: Color(0xff041C32),
        ),
      ),
      body: Container(
        color: Color(0xff041C32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 22,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/pp.jpeg'),
                  radius: 63,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bayu Ilham',
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      '065120067',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.hindSiliguri(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Text(
                      'Universitas Pakuan',
                      style: GoogleFonts.kanit(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 34,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Positioned(
                  left: 0.0,
                  child: Stack(
                    children: [
                      Container(
                          width: 250,
                          height: 650,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(53)))),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 80),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 29, top: 33),
                                width: 101,
                                height: 101,
                                decoration: BoxDecoration(
                                  color: Color(0xffECB365),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  icon:
                                      Icon(Icons.spatial_audio_sharp, size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'mahasiswa');
                                  },
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 29, top: 33),
                                width: 101,
                                height: 101,
                                decoration: BoxDecoration(
                                  color: Color(0xffECB365),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.rocket_launch_rounded,
                                      size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'maroon');
                                  },
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 29, top: 33),
                                width: 101,
                                height: 101,
                                decoration: BoxDecoration(
                                  color: Color(0xffECB365),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.keyboard_return_outlined,
                                      size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'landing');
                                  },
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
