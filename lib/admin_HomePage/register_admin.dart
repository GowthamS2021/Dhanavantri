import 'package:dhanvantri/admin_HomePage/navBar.dart';
import 'package:flutter/material.dart';

class adminReg extends StatefulWidget {
  const adminReg({super.key});

  @override
  State<adminReg> createState() => _adminRegState();
}

class _adminRegState extends State<adminReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar1(),
        appBar: AppBar(
          title: Text("Register Admin"),
        ),
        body: Center(
          child: Text("Welcome"),
        ));
  }
}
