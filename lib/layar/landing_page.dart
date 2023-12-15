import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing_Page extends StatefulWidget {
  Landing_Page({Key? key, required this.title}) : super(key: key);
  var title;
  @override
  State<Landing_Page> createState() => _Landing_PageState();
}

class _Landing_PageState extends State<Landing_Page> {
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
                        padding: const EdgeInsets.only(left: 10),
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
                                  icon: Icon(Icons.person, size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'profile');
                                  },
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 29, top: 16),
                                width: 101,
                                height: 101,
                                decoration: BoxDecoration(
                                  color: Color(0xffECB365),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.calendar_month, size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'birth');
                                  },
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 29, top: 16),
                                width: 101,
                                height: 101,
                                decoration: BoxDecoration(
                                  color: Color(0xffECB365),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.location_on, size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'location');
                                  },
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 29, top: 16),
                                width: 101,
                                height: 101,
                                decoration: BoxDecoration(
                                  color: Color(0xffECB365),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.school, size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'education');
                                  },
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 29, top: 16),
                                width: 101,
                                height: 101,
                                decoration: BoxDecoration(
                                  color: Color(0xffECB365),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.task_outlined, size: 60),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'tugas');
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
