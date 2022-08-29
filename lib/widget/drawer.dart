import 'package:flutter/material.dart';


class DrawerProtalent extends StatelessWidget {
  const DrawerProtalent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Column(
        children: [
          SizedBox(height: 50,),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.pushNamed(context, '/') ,
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('About Us'),
            onTap: () =>Navigator.pushNamed(context, '/about') ,
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text('Our Service'),
            onTap: () =>Navigator.pushNamed(context, '/service')  ,
          ),
          ListTile(
            leading: Icon(Icons.event_note),
            title: Text('Career'),
            onTap: () => Navigator.pushNamed(context, '/career') ,
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text('Contact Us'),
            onTap: () => Navigator.pushNamed(context, '/contact') ,
          ),
        ],
      ),
    );
  }
}
