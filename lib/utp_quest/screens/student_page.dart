import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utp_mopro/utp_quest/models/model_student.dart';
import 'package:utp_mopro/utp_quest/services/repositoristudent.dart';

class student_page extends StatelessWidget {
  const student_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'api testing',
      debugShowCheckedModeBanner: false,
      home: MyHomepage(
        title: 'Student API',
      ),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<model_student>? listStudent = [];
  Repo repository = Repo();

  final _npmController = TextEditingController();
  final _namaController = TextEditingController();

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

  var roboto_style_hit = GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white);

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
            Navigator.of(context, rootNavigator: true).pushNamed("tugas");
          },
        ),
        title: Text(widget.title),
      ),
      body: Container(
        color: Color(0xff041C32),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(53))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 19),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEEEEEE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 400,
                            height: 65,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 14, right: 15, top: 12),
                                          child: Text(
                                            listStudent![index].id.toString(),
                                            style: roboto_style_title_id,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 17,
                                              height: 17,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff041C32),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5,
                                                    left: 4,
                                                    bottom: 1),
                                                child: Text(
                                                  listStudent![index]
                                                      .hit
                                                      .toString(),
                                                  style: roboto_style_hit,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 13),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text(
                                              listStudent![index].name,
                                              style: roboto_style,
                                            )
                                          ]),
                                          Row(children: [
                                            Text(
                                              listStudent![index].npm,
                                              style: hindSiliguri_style,
                                            ),
                                          ]),
                                        ]),
                                  ),
                                ]),
                          ),
                        ]),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: listStudent!.length),
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color(0xff041C32)),
        child: Icon(Icons.add_box_outlined),
        onPressed: () {
          dialog();
        },
      ),
    );
  }

  Future dialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Add New Data'),
            content: Column(children: [
              TextFormField(
                controller: _npmController,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'Masukkan NPM',
                    labelText: 'NPM',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(
                    hintText: 'Masukkan Nama',
                    labelText: 'Nama',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ]),
            actions: [
              TextButton(
                  onPressed: (() async {
                    bool Response = await repository.postData(
                        _namaController.text, _npmController.text);

                    if (Response) {
                      Navigator.of(context).pop();
                    } else {
                      print('Sebaiknya Jangan Terlalu Gegabah');
                    }
                  }),
                  child: Text('Submit'))
            ],
          ));
}
