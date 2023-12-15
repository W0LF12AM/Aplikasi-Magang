import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utp_mopro/utp_quest/models/model_maroon.dart';
import 'package:utp_mopro/utp_quest/services/repositorimaroon.dart';

void main() {
  runApp(const maroon_page());
}

class maroon_page extends StatelessWidget {
  const maroon_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'api testing',
      home: MyHomepage(
        title: 'Maroon API',
      ),
    );
  }
}

class MyHomepage extends StatefulWidget {
  MyHomepage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<maroon>? listStudent = [];
  repos repository = repos();

  getData() async {
    listStudent = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  var roboto_style_title_id = GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Color.fromARGB(255, 0, 0, 0));

  var roboto_style_title = GoogleFonts.roboto(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);

  var roboto_style = GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);

  var hindSiliguri_style =
      GoogleFonts.hindSiliguri(fontSize: 13, fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff041C32),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pushNamed('tugas');
            },
          ),
          title: Text(widget.title),
        ),
        body: Container(
          color: Color(0xff041C32),
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Stack(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 9),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(53))),
                    padding: EdgeInsets.only(top: 90),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, right: 37),
                            child: Container(
                              width: 300,
                              height: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffEEEEEE)),
                              padding: EdgeInsets.only(left: 20),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 14, right: 15, top: 7),
                                          child: Text(
                                            listStudent![index].id.toString(),
                                            style: roboto_style_title_id,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 13,
                                            ),
                                            Row(children: [
                                              Text(
                                                listStudent![index].name,
                                                style: roboto_style,
                                              )
                                            ]),
                                            Row(children: [
                                              Text(
                                                listStudent![index].message,
                                                style: hindSiliguri_style,
                                              ),
                                            ]),
                                          ]),
                                    ]),
                                SizedBox(
                                  height: 10,
                                )
                              ]),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 20,
                          );
                        },
                        itemCount: listStudent!.length),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 44),
                child: Text(
                  "Asisten Praktikum",
                  style: roboto_style_title,
                ),
              ),
            ]),
          ),
        ));
  }
}
