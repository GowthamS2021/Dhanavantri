import 'package:dhanvantri/backend/auth.dart';
import 'package:dhanvantri/client_HomePage/HomePage.dart';
import 'package:dhanvantri/login/client_signup.dart';
import 'package:flutter/material.dart';
import 'package:dhanvantri/login/forget.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  static const String _title = 'Dhanvantri';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your Email',
                          labelText: 'Email',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid email ID';
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
                            if (_formKey.currentState!.validate()) {
                              dynamic result =
                                  await _auth.clientsignInWithEmailAndPassword(
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
                                      builder: (context) => HomeScreen(),
                                    ));
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(237, 81, 133, 1),
                          ),
                          child: const Center(
                            child: Text(
                              'Login',
                            ),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Sign in',
                            style: TextStyle(
                                color: Color.fromARGB(255, 195, 59, 77)),
                          ),
                          onPressed: () {
                            //signup screen
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ));
                          },
                        )
                      ],
                    ),
                  ]),
            )
          ],
        ));
  }
}
