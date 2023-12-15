import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    var roboto_style = GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);

    var hindSiliguri_style =
        GoogleFonts.hindSiliguri(fontSize: 13, fontWeight: FontWeight.w300);

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
                          padding: const EdgeInsets.only(left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 19),
                                child: Text(
                                  'Hello guys, I am Bayu',
                                  textAlign: TextAlign.left,
                                  style: roboto_style,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, right: 45),
                                child: Text(
                                  'My name is Bayu Ilham, and I am a Computer Science student at Pakuan University. I was born on February 10th, 2002 in Bogor, Indonesia. Currently, I am in my 6th semester of university. Since I was young, I have been interested in the world of technology, especially computers and the internet.',
                                  textAlign: TextAlign.justify,
                                  style: hindSiliguri_style,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Text(
                                  'My Hobby',
                                  textAlign: TextAlign.left,
                                  style: roboto_style,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, right: 45),
                                child: Text(
                                  'In my free time, I have several hobbies that I enjoy. Firstly, I love drawing. I often spend my free time drawing various shapes and characters. Secondly, I have a hobby of making films. I like creating stories and turning them into interesting films. Thirdly, I enjoy writing scripts. Often, I write scenarios for the films that I plan to make. Lastly, I also enjoy watching movies. Watching movies is a form of entertainment and also a way to expand my knowledge about the film industry.',
                                  textAlign: TextAlign.justify,
                                  style: hindSiliguri_style,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Text(
                                  'Why ?',
                                  textAlign: TextAlign.left,
                                  style: roboto_style,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, right: 45),
                                child: Text(
                                  'These hobbies help me to relax and refresh my mind after a tiring day of studying. I also hope to develop my skills and abilities in these fields so that I can have a solid foundation for my future career.',
                                  textAlign: TextAlign.justify,
                                  style: hindSiliguri_style,
                                ),
                              )
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
        ));
  }
}
