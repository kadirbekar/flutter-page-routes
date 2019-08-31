import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("github.com/daydreamer54"),
            accountName: Text("Github profile"),
            currentAccountPicture: Image.network(
                "https://avatars0.githubusercontent.com/u/34074484?s=400&v=4"),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text(
                  "TR",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  "TR",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    debugPrint("Main Page");
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.add_to_home_screen),
                    title: Text(
                      "Main Page",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                InkWell(
                  onTap: (){
                    debugPrint("Mail Page");
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text(
                      "Mail Page",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    trailing: Icon(Icons.portrait),
                  ),
                ),
                InkWell(
                  onTap: (){
                    debugPrint("Info Page");
                  },
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text(
                      "Info Page",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    trailing: Icon(Icons.info),
                  ),
                ),
                Divider(
                  height: 15.0,
                  color: Colors.red,
                ),
                AboutListTile(
                  applicationName: "com.kadirbekar.itdoesntmatter",
                  applicationIcon: Icon(Icons.sentiment_satisfied),
                  applicationVersion: '2.0',
                  icon: Icon(Icons.sentiment_very_dissatisfied),
                  aboutBoxChildren: <Widget>[
                    Text("Example 1"),
                    Text("Example 2"),
                    Text("Example 3"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
