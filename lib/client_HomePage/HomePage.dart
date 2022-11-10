import 'nave_bar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyHomePage();
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: MyHomePage(),
  //   );
  // }

}

class MyHomePage extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('*************');
        return true;
      },
      child: Scaffold(
        drawer: NavBar(),
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
                    child: const Text(
                      "Welcome to Dhanvantri APP",
                      textScaleFactor: 2,
                      textAlign: TextAlign.center,
                    ))),
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
