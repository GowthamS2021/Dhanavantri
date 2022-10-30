import 'package:flutter/material.dart';

class Forget extends StatelessWidget {
  const Forget({Key? key}) : super(key: key);

  static const String _title = 'Dhanvantri';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: ForgetPage(),
    );
  }
}

class ForgetPage extends StatefulWidget {
  @override
  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
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

enum SingingCharacter { admin, user }

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // have to check if the mail is in the admin or user list respectively or not
  TextEditingController mailController = TextEditingController();
  String selectedValue = "Admin";
  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text("Admin", textAlign: TextAlign.center), value: "Admin"),
      DropdownMenuItem(
          child: Text("User", textAlign: TextAlign.center), value: "User"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Center(
                    child: Text(
                  'Enter Registered Email Id to continue',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 59, 166, 195),
                  ),
                  textAlign: TextAlign.center,
                ))),
            Form(
                key: _formKey3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          controller: mailController,
                          decoration: const InputDecoration(
                            hintText: 'Registered Email Id',
                            labelText: 'Registered Email ID',
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
                        padding: const EdgeInsets.all(10),
                        child: DropdownButtonFormField(
                          value: selectedValue,
                          items: dropdownItems,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                        ),
                      ),
                      Container(
                          height: 50,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: ElevatedButton(
                            child: const Center(
                              child: Text(
                                'Continue',
                              ),
                            ),
                            onPressed: () {
                              // continue
                            },
                          )),
                    ]))
          ],
        ));
  }
}
