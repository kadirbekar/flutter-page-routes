import 'package:flutter/material.dart';
import './main_page.dart';
import './mail_page.dart';
import './info_page.dart';
import './drawer_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Page Routes',
    theme: ThemeData(
      fontFamily: 'Genel',
      primaryColor: Colors.orange,
    ),
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<Widget> allPages;
  MainPage mainPage;
  MailPage mailPage;
  InfoPage infoPage;

  @override
  void initState() {
    super.initState();
    mainPage = MainPage();
    mailPage = MailPage();
    infoPage = InfoPage();
    allPages = [mainPage, mailPage, infoPage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page Routes Example"),
      ),
      body: allPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35.0,
              color: Colors.orange,
            ),
            title: Text(
              "Home",style: TextStyle(fontSize: 20.0),
            ),
            activeIcon: Icon(Icons.add_to_home_screen),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              size: 35.0,
              color: Colors.amber,
            ),
            title: Text(
              "Mail",style: TextStyle(fontSize: 20.0),
            ),
            activeIcon: Icon(Icons.mail_outline),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              size: 35.0,
              color: Colors.purple,
            ),
            title: Text(
              "ınfo",style: TextStyle(fontSize: 20.0),
            ),
            activeIcon: Icon(Icons.info_outline),
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
