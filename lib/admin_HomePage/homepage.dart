import 'package:dhanvantri/admin_HomePage/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('*************');
        return true;
      },
      child: Scaffold(
        drawer: NavBar1(),
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
            child: Container(
                child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset('assets/images/logo.jpeg',
                  width: 250, height: 250, fit: BoxFit.fill),
            ),
            SizedBox(height: 10),
            Center(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text("Welcome to Dhanvantri APP",
                        textScaleFactor: 2))),
          ],
        ))),
      ),
    );
    // return Scaffold(
    //   drawer: NavBar(),
    //   appBar: AppBar(
    //     title: Text('Home'),
    //   ),
    //   body: Center(
    //     child: Text('Welcome'),
    //   ),
    // );
  }
}
