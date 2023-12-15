import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Education_Page extends StatelessWidget {
  const Education_Page({super.key});

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
                                        Icons.school,
                                        size: 60,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 20),
                                          child: Text(
                                            'Education',
                                            style: roboto_style,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            'Jhs, Shs, and College',
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
                                    'Junior High School',
                                    style: roboto_style,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, right: 45),
                                    child: Text(
                                      'SMPN 9 Bogor is a junior high school in Bogor, West Java. It offers a comprehensive education program and a variety of extracurricular activities. The school is committed to providing a safe and supportive learning environment for its students.',
                                      textAlign: TextAlign.justify,
                                      style: hindSiliguri_style,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Text(
                                    'Senior High School',
                                    style: roboto_style,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, right: 45),
                                    child: Text(
                                      'SMA Negeri 4 Bogor is one of the well-known public high schools in Bogor. Established in 1964, the school has been providing quality education with good facilities and dedicated teachers. SMA Negeri 4 Bogor offers various academic programs such as science, social studies, languages, and arts, as well as diverse extracurricular activities such as sports, music, and student clubs.',
                                      textAlign: TextAlign.justify,
                                      style: hindSiliguri_style,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Text(
                                    'College',
                                    style: roboto_style,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, right: 45),
                                    child: Text(
                                      'Universitas Pakuan is a private university located in Bogor that offers various undergraduate and graduate programs in business, engineering, law, and social sciences. Established in 1984, it has modern facilities such as a library, computer labs, and sports facilities.',
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
