import 'package:dhanvantri/backend/auth.dart';
import 'package:dhanvantri/backend/database.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dhanvantri/main.dart';
import 'forget.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({Key? key}) : super(key: key);

  static const String _title = 'Dhanvantri';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String phoneNo = '';
  String medical = '';
  final AuthService _auth = AuthService();
  final DataBaseService _database = DataBaseService();
  final GlobalKey<FormState> _signupformKey = GlobalKey<FormState>();

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
                  'Sign Up',
                  style: TextStyle(
                      color: Color.fromARGB(255, 195, 59, 75),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Form(
              key: _signupformKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'User Name',
                          labelText: 'User Name*',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        onChanged: (value) => {setState(() => name = value)},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Email ID (preferably LDAP ID)',
                          labelText: 'E-mail Address*',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid mail ID';
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
                          labelText: 'Password*',
                        ),
                        validator: (String? value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6) {
                            return 'Please enter strong password of length atleast 6';
                          }
                          return null;
                        },
                        onChanged: (value) =>
                            {setState(() => password = value)},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Confirm Password',
                            labelText: 'Confirm Password*',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Password';
                            } else if (password != '') {
                              if (password != confirmPassword)
                                return 'Passwords don\'t match';
                            }
                            return null;
                          },
                          onChanged: (value) =>
                              {setState(() => confirmPassword = value)}),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Phone No',
                            labelText: 'Phone No*',
                          ),
                          validator: (String? value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 10) {
                              return 'Please enter valid Phone No';
                            }
                            return null;
                          },
                          onChanged: (value) =>
                              {setState(() => phoneNo = value)}),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Medical Conditions',
                            labelText: 'Medical Conditions',
                          ),
                          validator: (String? value) {
                            return null;
                          },
                          onChanged: (value) =>
                              {setState(() => medical = value)}),
                    ),
                    Container(
                        height: 90,
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ElevatedButton(
                          onPressed: () async {
                            // validate the details
                            if (_signupformKey.currentState!.validate()) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    // validate the details
                                    return AlertDialog(
                                      title: Text("Confirmation"),
                                      content: const Text(
                                          "Are you sure of your credentials?"),
                                      actions: [
                                        TextButton(
                                            onPressed: () async {
                                              dynamic result = await _auth
                                                  .createUserWithEmailAndPassword(
                                                      email,
                                                      password,
                                                      name,
                                                      phoneNo);

                                              if (result != null) {
                                                //validate the credetials
                                                _database.setuid(result.uid);
                                                _database.updateUserData(
                                                    name,
                                                    email,
                                                    false,
                                                    phoneNo,
                                                    medical);
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        title:
                                                            Text("SignUp done"),
                                                        content: const Text(
                                                            "Taking back to Home Screen"),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.pushReplacement(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                Wrapper()));
                                                              },
                                                              child:
                                                                  Text("Ok")),
                                                        ],
                                                      );
                                                    });
                                              } else {
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        title: Text("Problem"),
                                                        content: const Text(
                                                            "User Name or Email already exists, Try Again!"),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {
                                                                // Navigator.pushReplacement(
                                                                //     context,
                                                                //     MaterialPageRoute(
                                                                //         builder:
                                                                //             (context) =>
                                                                //                 SignupPage()));
                                                                int i = 0;
                                                                Navigator.popUntil(
                                                                    context,
                                                                    (route) =>
                                                                        i++ ==
                                                                        2);
                                                              },
                                                              child:
                                                                  Text("Ok")),
                                                        ],
                                                      );
                                                    });
                                              }
                                            },
                                            child: Text("Yes")),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("No"))
                                      ],
                                    );
                                  });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(237, 81, 133, 1),
                          ),
                          child: const Center(
                            child: Text(
                              'Signup',
                            ),
                          ),
                        )),
                  ]),
            )
          ],
        ));
  }
}
