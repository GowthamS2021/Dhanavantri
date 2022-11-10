import 'package:dhanvantri/admin_HomePage/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class emergencyList extends StatefulWidget {
  const emergencyList({super.key});

  @override
  State<emergencyList> createState() => _emergencyListState();
}

class _emergencyListState extends State<emergencyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar1(),
      appBar: AppBar(
        title: Text("Emergency Cases"),
      ),
      body: Column(
        children: [
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   child: Text(""),
          // ),
          Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "2376476745",
                        text1: "Pending",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "2456545634",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "32534567645",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "53463423456",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "3546435674",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "564356554",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "205465432",
                        text1: "Done",
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
            Icon(Icons.emergency),
            SizedBox(width: 5),
            Expanded(child: Text(text)),
            SizedBox(width: 5),
            SizedBox(width: 2),
            Expanded(
                child: ElevatedButton(
              onPressed: () {
                // check if this is valid
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(237, 81, 133, 1),
              ),
              child: const Center(
                  child: Text(
                'Get',
              )),
            ))
          ],
        ),
      ),
    );
  }
}
