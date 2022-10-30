import 'package:flutter/material.dart';
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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController medicalController = TextEditingController();
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
                        controller: nameController,
                        decoration: const InputDecoration(
                          hintText: 'Enter your Name',
                          labelText: 'User Name',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        controller: mailController,
                        decoration: const InputDecoration(
                          hintText: 'Email ID (preferably LDAP ID)',
                          labelText: 'E-mail Address',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid mail ID';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        controller: confirmpasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        controller: phoneNoController,
                        decoration: const InputDecoration(
                          hintText: 'Phone No',
                          labelText: 'Phone No',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid mail ID';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        controller: medicalController,
                        decoration: const InputDecoration(
                          hintText: 'Medical Conditions',
                          labelText: 'Medical Conditions',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid mail ID';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                        height: 90,
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ElevatedButton(
                          onPressed: () {
                            // validate the details
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
