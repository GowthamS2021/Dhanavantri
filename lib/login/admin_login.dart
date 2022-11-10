import 'package:dhanvantri/admin_HomePage/homepage.dart';
import 'package:dhanvantri/backend/auth.dart';
import 'package:dhanvantri/login/client_login.dart';
import 'package:flutter/material.dart';
import 'forget.dart';

class adminLoginpage extends StatelessWidget {
  const adminLoginpage({Key? key}) : super(key: key);

  static const String _title = 'Dhanvantri';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: AdminPage(),
    );
  }
}

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  static const String _title = 'Dhanvantri';

  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String email = '';
  String password = '';
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'Dhanvantri',
                  style: TextStyle(
                      color: Color.fromARGB(255, 195, 59, 75),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Login to Use',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 59, 166, 195),
                  ),
                )),
            Form(
              key: _formKey2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          labelText: 'Registered Email',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Email';
                          }
                          return null;
                        },
                        onChanged: (value) => {setState(() => email = value)},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                        validator: (String? value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                        onChanged: (value) =>
                            {setState(() => password = value)},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Forget(),
                              ));
                        },
                        child: const Center(
                          child: Text(
                            'Forgot Password',
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: ElevatedButton(
                          onPressed: () async {
                            // check login page
                            if (_formKey2.currentState!.validate()) {
                              dynamic result =
                                  await _auth.adminsignInWithEmailAndPassword(
                                      email, password);
                              if (result == null) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Login failed"),
                                        content: const Text(
                                            "Taking back to Login page"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Ok")),
                                        ],
                                      );
                                    });
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => homePage(),
                                    ));
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 124, 235, 163),
                          ),
                          child: const Center(
                            child: Text(
                              'Login',
                            ),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: const Center(
                          child: Text(
                              'Admins have to be registered by the hospital.',
                              style: TextStyle(
                                fontSize: 10,
                              )),
                        )),
                  ]),
            )
          ],
        ));
  }
}
