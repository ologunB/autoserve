import 'package:flutter/material.dart';

class EditMechProfile extends StatefulWidget {
  @override
  _EditMechProfileState createState() => _EditMechProfileState();
}

class _EditMechProfileState extends State<EditMechProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Edit Profile",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person, color: Colors.black, size: 40),
              radius: 40,
            ),
          ),
          ListTile(
            title: Text(
              "Service station name",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            subtitle: Text(
              "FDA Car Services",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(),
          ),
          ListTile(
            isThreeLine: true,
            title: Text(
              "About",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            subtitle: Text(
              "Lo pus Adei  Adei lorem apai Lorem pus Adei lorem apai Lorem pus Adei lorem apai Lorem pus Adei lorem apai Lorem pus Adei lorem apai Lorem pus Adei lorem apai Lorem pus Adei lorem apai Lorem pus Adei lorem apai ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(),
          ),
          ListTile(
            title: Text(
              "Location",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            subtitle: Text(
              "Lagos, Nigeria",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
