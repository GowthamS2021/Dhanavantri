import 'package:flutter/material.dart';

class log_book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: my_log_book(),
    );
  }
}

class my_log_book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
        title: Text('Log Book'),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}
