import 'package:dhanvantri/Models/User.dart';
import 'package:dhanvantri/client_HomePage/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'backend/auth.dart';
import 'login/client_login.dart';
import 'login/admin_login.dart';
import 'login/emergency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<ClientUserdetails?>.value(
        value: AuthService().user, initialData: null, child: Wrapper());
  }
}

class Wrapper extends StatelessWidget {
  static const String _title = 'Dhanvantri';
  @override
  Widget build(BuildContext context) {
    dynamic user = Provider.of<ClientUserdetails?>(context);
    if (user == null) {
      return const MaterialApp(
        title: _title,
        home: Scaffold(
          body: MyStatefulWidget(),
        ),
      );
    } else {
      return MaterialApp(
        title: _title,
        home: Scaffold(
          body: HomeScreen(),
        ),
      );
    }
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset('assets/images/logo.jpeg',
                width: 250, height: 250, fit: BoxFit.fill),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.zero)),
              child: ElevatedButton(
                child: const Text('Login as Admin'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => adminLoginpage(),
                      ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 195, 59, 107)),
                ),
              )),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: new EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.zero)),
              child: ElevatedButton(
                child: const Text('Login as User'),
                onPressed: () {
                  // user login
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginpage(),
                      ));
                  // Loginpage();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 195, 59, 107)),
                ),
              )),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: new EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.zero)),
              child: ElevatedButton(
                child: const Text('Emergency'),
                onPressed: () {
                  // emergency page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Emergency(),
                      ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 195, 59, 107)),
                ),
              ))
        ]));
  }
}
