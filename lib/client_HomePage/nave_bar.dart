import 'package:dhanvantri/Models/User.dart';
import 'package:dhanvantri/backend/auth.dart';
import 'package:dhanvantri/backend/database.dart';
import 'package:dhanvantri/client_HomePage/Availailabity.dart';
import 'package:dhanvantri/client_HomePage/HomePage.dart';
import 'package:dhanvantri/client_HomePage/PinkSlip.dart';
import 'package:dhanvantri/client_HomePage/Reports.dart';
import 'package:dhanvantri/client_HomePage/logBook.dart';
import 'package:dhanvantri/client_HomePage/profilePage.dart';
import 'package:dhanvantri/main.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'Pharmacy.dart';

class NavBar extends StatelessWidget {
  final AuthService _auth = AuthService();
  String email = 'example.com';
  String name = 'person';

  //NavBar(email, name);

  @override
  Widget build(BuildContext context) {
    dynamic user = Provider.of<ClientUserdetails?>(context);
    email = user.email ?? email;
    name = user.name ?? name;
    // _db.setuid(user.uid);
    // Future<Userdetails?> uds = _db.getdata();
    // Userdetails? userDetails;
    // userDetails = userDetails!.convert(uds);
    // if (userDetails != null) {
    //   email = userDetails.getemail() ?? 'example.com';
    //   name = userDetails.getname() ?? 'You';
    // }
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            onDetailsPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            accountName: Text(email),
            accountEmail: Text(name),
            currentAccountPicture: CircleAvatar(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => clientprofile()));
                },
                child: ClipRRect(
                    child: Image.asset(
                  'assets/images/default_profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                )),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
              leading: Icon(Icons.book),
              title: Text('Medical Book'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => logbook(),
                    ));
              }),
          ListTile(
              leading: Icon(Icons.person),
              title: Text('Doctor\'s Availability'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => docs_available(),
                    ));
              }),
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('Reports'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => all_Reports(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Send Pink slip'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pinkslip(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.new_label),
            title: Text('Pharmacy'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pharmacy(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () async {
              await _auth.signOut();
              // return Wrapper();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Wrapper(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
