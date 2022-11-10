import 'package:dhanvantri/client_HomePage/HomePage.dart';
import 'package:dhanvantri/client_HomePage/nave_bar.dart';
import 'package:flutter/material.dart';

class pinkslip extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return pinkslipState();
  }
}

class pinkslipState extends State<pinkslip> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          print('*******************************88');
          return false;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: NavBar(),
          appBar: AppBar(
            title: Text('Your Pink Slips'),
          ),
          body: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        //margin: ,
                        child: Column(
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Column(children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Date of appointment',
                                      labelText:
                                          'Enter date of your appointment to apply for Pink Slip',
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'Professor\'s Email ID',
                                      labelText:
                                          'Enter professor\'s emal id to whom you want to send Pink Slip',
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                      return null;
                                    },
                                  ),
                                ])),
                            Container(
                                height: 90,
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text("Confirmation"),
                                            content: const Text(
                                                "Are you sure of your Details?"),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    // do stuff
                                                  },
                                                  child: Text("Yes")),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("No")),
                                            ],
                                          );
                                        });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(237, 81, 133, 1),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Send Pink Slip',
                                  )),
                                ))
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(children: [
                        SizedBox(height: 20),
                        Container(
                          child: Text("List of your Pink Slips"),
                        ),
                        SizedBox(height: 10),
                        ProfileMenu(
                          text: "01/11/2022",
                          text1: "Fever and slight cold",
                          icon: Icon(Icons.comment),
                          press: () {},
                        ),
                        SizedBox(height: 10),
                        ProfileMenu(
                          text: "20/10/2022",
                          text1: "Stomach ache",
                          icon: Icon(Icons.comment),
                          press: () {},
                        ),
                        SizedBox(height: 10),
                        ProfileMenu(
                          text: "20/10/2022",
                          text1: "Stomach ache",
                          icon: Icon(Icons.comment),
                          press: () {},
                        ),
                        SizedBox(height: 10),
                        ProfileMenu(
                          text: "20/10/2022",
                          text1: "Stomach ache",
                          icon: Icon(Icons.comment),
                          press: () {},
                        ),
                        SizedBox(height: 10),
                        ProfileMenu(
                          text: "20/10/2022",
                          text1: "Stomach ache",
                          icon: Icon(Icons.comment),
                          press: () {},
                        ),
                      ]))),
            ],
          ),
        ));
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.text1,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, text1;
  final Icon icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Color.fromARGB(255, 158, 163, 179),
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            icon,
            SizedBox(width: 2),
            Expanded(child: Text(text)),
            Expanded(child: Text(':')),
            SizedBox(width: 2),
            Expanded(child: Text(text1)),
          ],
        ),
      ),
    );
  }
}
