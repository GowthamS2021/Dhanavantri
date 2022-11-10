import 'package:dhanvantri/admin_HomePage/UpdateDocAvailability.dart';
import 'package:dhanvantri/admin_HomePage/emergency_queries.dart';
import 'package:dhanvantri/admin_HomePage/homepage.dart';
import 'package:dhanvantri/admin_HomePage/pendingPinkSlips.dart';
import 'package:dhanvantri/admin_HomePage/pendingappointments.dart';
import 'package:dhanvantri/admin_HomePage/register_admin.dart';
import 'package:dhanvantri/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            onDetailsPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => homePage()));
            },
            accountName: const Text('Oflutter.com'),
            accountEmail: const Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
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
              title: Text('Register Admin'),
              // onTap: () {
              //   // emergency page
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => log_book(),
              //       ));
              // }
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => adminReg(),
                    ));
              }),
          ListTile(
              leading: Icon(Icons.person),
              title: Text('Update Doctor\'s Availability'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => up_doc_ava(),
                    ));
              }),
          ListTile(
            leading: Icon(Icons.emergency),
            title: Text('Emergencies'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => emergencyList(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Pending pink slips'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pending_PinkSlips(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Pending Appointments'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pending_appointments(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => App()));
            },
          ),
        ],
      ),
    );
  }
}
