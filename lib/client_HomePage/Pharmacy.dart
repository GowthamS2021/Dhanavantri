import 'package:dhanvantri/client_HomePage/HomePage.dart';
import 'package:dhanvantri/client_HomePage/nave_bar.dart';
import 'package:flutter/material.dart';

class pharmacy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return my_pharmacy();
  }
}

class my_pharmacy extends State<pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Pharmacy'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Your Pharmacy",
              textScaleFactor: 1.5,
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "01/11/2022",
                        text1: "Pending",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
                        text1: "Done",
                        icon: Icon(Icons.comment),
                        press: () {},
                      ),
                      SizedBox(height: 10),
                      ProfileMenu(
                        text: "20/10/2022",
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
            icon,
            SizedBox(width: 5),
            Expanded(child: Text(text)),
            SizedBox(width: 5),
            Expanded(child: Text('Status: $text1')),
            // Expanded(child: Text(text1)),
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
// }

}
