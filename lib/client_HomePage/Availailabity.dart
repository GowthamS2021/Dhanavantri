import 'package:dhanvantri/client_HomePage/HomePage.dart';
import 'package:dhanvantri/client_HomePage/nave_bar.dart';
import 'package:flutter/material.dart';

class docs_available extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return my_docs_available();
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: my_docs_available(),
  //   );
  // }

}

class my_docs_available extends State<docs_available> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () => {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => HomeScreen(),
        //           ))
        //     },
        //   ),
        title: Text('Doctors Available'),
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "Dr. ABC",
                        text1: "Dentist",
                        icon: Icon(Icons.person),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "Dr. ABC",
                        text1: "Dentist",
                        icon: Icon(Icons.person),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "Dr. ABC",
                        text1: "Dentist",
                        icon: Icon(Icons.person),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "Dr. ABC",
                        text1: "Dentist",
                        icon: Icon(Icons.person),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "Dr. ABC",
                        text1: "Dentist",
                        icon: Icon(Icons.person),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "Dr. ABC",
                        text1: "Dentist",
                        icon: Icon(Icons.person),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "Dr. ABC",
                        text1: "Dentist",
                        icon: Icon(Icons.person),
                        press: () {},
                      ),
                    ],
                  )))
        ],
      ),
    );
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
        onPressed: () {},
        child: Row(
          children: [
            icon,
            SizedBox(width: 5),
            Expanded(child: Text(text)),
            Expanded(child: Text(':')),
            SizedBox(width: 5),
            Expanded(child: Text(text1)),
          ],
        ),
      ),
    );
  }
}
