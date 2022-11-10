import 'package:dhanvantri/admin_HomePage/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pending_PinkSlips extends StatefulWidget {
  const pending_PinkSlips({super.key});

  @override
  State<pending_PinkSlips> createState() => _pending_PinkSlipsState();
}

class _pending_PinkSlipsState extends State<pending_PinkSlips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar1(),
      appBar: AppBar(
        title: Text("Pending Pink Slips"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Text("Your Pharmacy"),
          ),
          Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "01/11/2022",
                        text1: "ABC@gmail.com",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "BCD@gmail.com",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "BCD@gmail.com",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "BCD@gmail.com",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "BCD@gmail.com",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "BCD@gmail.com",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "BCD@gmail.com",
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
            SizedBox(width: 2),
            Expanded(child: Text(text)),
            SizedBox(width: 10),
            Expanded(child: Text(':')),
            SizedBox(child: Text(text1)),
            SizedBox(width: 2),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    // check if this is valid
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(237, 81, 133, 1),
                  ),
                  child: const Center(child: Icon(Icons.check))),
            )
          ],
        ),
      ),
    );
  }
}
