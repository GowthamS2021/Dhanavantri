import 'package:dhanvantri/client_HomePage/logBook.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
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
              title: Text('Medical Book'),
              onTap: () {
                // emergency page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => log_book(),
                    ));
              }),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Doctor\'s Availability'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('Reports'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Send Pink slip'),
          ),
          ListTile(
            leading: Icon(Icons.new_label),
            title: Text('Lab Order'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }
}
