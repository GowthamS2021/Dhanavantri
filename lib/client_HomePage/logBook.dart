import 'package:dhanvantri/client_HomePage/HomePage.dart';
import 'package:dhanvantri/client_HomePage/nave_bar.dart';
import 'package:flutter/material.dart';

// class log_book extends StatelessWidget {
//   const log_book({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: my_log_book(),
//     );
//   }
// }

// class my_log_book extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavBar(),
//       appBar: AppBar(
//         // leading: IconButton(
//         //   icon: Icon(Icons.arrow_back),
//         //   onPressed: () => {
//         //     Navigator.push(
//         //         context,
//         //         MaterialPageRoute(
//         //           builder: (context) => HomeScreen(),
//         //         ))
//         //   },
//         // ),
//         title: Text('Log Book'),
//       ),
//       body: Center(
//         child: Text('Welcome'),
//       ),
//     );
//   }
// }

// class log_book extends StatelessWidget {
//   const log_book({Key? key}) : super(key: key);

//   static const String _title = 'Dhanvantri';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: log_book_page(),
//     );
//   }
// }

// class log_book_page extends StatefulWidget {
//   @override
//   _log_book_page createState() => _log_book_page();
// }

// class _log_book_page extends State<log_book_page> {
//   static const String _title = 'Dhanvantri';

//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Mylogbook(),
//     );
//   }
// }

class logbook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return logbookstate();
  }
}

class logbookstate extends State<logbook> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            title: Text('log Book'),
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
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Medical Issue',
                                  labelText:
                                      'Enter Your issue to book appointment',
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                            ),
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
                                    'Book Appointment',
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
                          child: Text(
                            "List of your appointemts",
                            textScaleFactor: 1.5,
                          ),
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
            SizedBox(width: 5),
            Expanded(child: Text('$text :')),
            // Expanded(child: Text(':')),
            SizedBox(width: 5),
            Expanded(child: Text(text1)),
          ],
        ),
      ),
    );
  }
}
