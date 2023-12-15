import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class location_page extends StatelessWidget {
  const location_page({super.key});

  @override
  Widget build(BuildContext context) {
    var roboto_style = GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);

    var hindSiliguri_style =
        GoogleFonts.hindSiliguri(fontSize: 13, fontWeight: FontWeight.w300);

    var hindSiliguri_style_head =
        GoogleFonts.hindSiliguri(fontSize: 20, fontWeight: FontWeight.w300);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff041C32),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pushNamed(context, 'landing');
            },
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
                            width: 390,
                            height: 620,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(53)))),
                        Padding(
                            padding: const EdgeInsets.only(left: 23, top: 38),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 45,
                                      height: 50,
                                      color: Colors.white,
                                      child: Icon(
                                        Icons.location_on,
                                        size: 60,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12, top: 20),
                                          child: Text(
                                            'Address',
                                            style: roboto_style,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Text(
                                            'Bogor, Ciapus Tamansari',
                                            style: hindSiliguri_style_head,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 39),
                                  child: Text(
                                    'Where is it ?',
                                    style: roboto_style,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, right: 45),
                                    child: Text(
                                      'Ciapus Tamansari is situated in a hilly area, with an elevation ranging from 100 to 600 meters above sea level. The subdistrict is also known for its natural beauty, including waterfalls and lush green forests. Visitors can enjoy hiking and trekking activities in the nearby Gunung Geulis and Gunung Pancar areas.',
                                      textAlign: TextAlign.justify,
                                      style: hindSiliguri_style,
                                    )),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
