import 'package:flutter/material.dart';
import 'navBar.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pending_appointments extends StatefulWidget {
  const pending_appointments({super.key});

  @override
  State<pending_appointments> createState() => _pending_appointmentsState();
}

class _pending_appointmentsState extends State<pending_appointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar1(),
      appBar: AppBar(
        title: Text('Pending Appointments'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Text("Pending Appointments"),
          ),
          Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "email@gmail.com",
                        text1: "Fever and slight cold",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "email@gmail.com",
                        text1: "Fever and slight cold",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "email@gmail.com",
                        text1: "Fever and slight cold",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "email@gmail.com",
                        text1: "Fever and slight cold",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "email@gmail.com",
                        text1: "Fever and slight cold",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "email@gmail.com",
                        text1: "Fever and slight cold",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "email@gmail.com",
                        text1: "Fever and slight cold",
                        icon: Icon(Icons.comment),
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
