import 'package:flutter/material.dart';

import '../log_screen.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  // You can add your user profile image here
                  // backgroundImage: NetworkImage('https://example.com/your_image.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Shahbaz Zulfiqar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),

              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Navigate to the home screen
              Navigator.pop(context); // Close the drawer
              // Add your navigation logic here
            },
          ),




          ListTile(
            leading: Icon(Icons.book),
            title: const Text('Log'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  LogScreen()));
            },


          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              // Implement your logout logic
              Navigator.pop(context);
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMapScreen()));// Close the drawer
              // Add your logout logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              // Implement your logout logic
              Navigator.pop(context);
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));// Close the drawer
              // Add your logout logic here
            },
          ),
        ],
      ),
    );
  }
}
