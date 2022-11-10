import 'package:dhanvantri/admin_HomePage/navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class up_doc_ava extends StatefulWidget {
  const up_doc_ava({super.key});

  @override
  State<up_doc_ava> createState() => _up_doc_avaState();
}

class _up_doc_avaState extends State<up_doc_ava> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar1(),
        appBar: AppBar(
          title: Text("Change Doctor availability"),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Doctor Name',
                  labelText: 'Doctor Name',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Specialization',
                  labelText: 'Specialization',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter';
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
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Confirmation"),
                            content:
                                const Text("Are you sure of your Details?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    // do stuff
                                  },
                                  child: Text("Yes")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("No")),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(237, 81, 133, 1),
                  ),
                  child: const Center(
                      child: Text(
                    'Add Doctor',
                  )),
                )),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Doctor Name',
                  labelText: 'Doctor Name',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Specialization',
                  labelText: 'Specialization',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter';
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
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Confirmation"),
                            content:
                                const Text("Are you sure of your Details?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    // do stuff
                                  },
                                  child: Text("Yes")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("No")),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(237, 81, 133, 1),
                  ),
                  child: const Center(
                      child: Text(
                    'Remove Doctor',
                  )),
                )),
          ],
        ));
  }
}
