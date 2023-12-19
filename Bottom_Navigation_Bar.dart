import 'package:example/Navigation_Bar_Screens.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  final screens = [
    const Home_Screen(),
    const Search_Screen(),
    const About_Screen(),
    const Settings_Screen()
  ];
  List<String> screentitle = ['Home', 'Search', 'About', 'Settings'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          title: Text(screentitle[currentindex],
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.red,
            type: BottomNavigationBarType.shifting,
            fixedColor: Colors.black,
            iconSize: 30,
            currentIndex: currentindex,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            onTap: (value) {
              currentindex = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Colors.red,
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  backgroundColor: Colors.teal,
                  icon: Icon(Icons.search),
                  label: 'Search'),
              BottomNavigationBarItem(
                  backgroundColor: Colors.indigo,
                  icon: Icon(Icons.info),
                  label: 'About'),
              BottomNavigationBarItem(
                  backgroundColor: Colors.purple,
                  icon: Icon(Icons.settings),
                  label: 'Settings')
            ]),
        body: IndexedStack(index: currentindex,children: screens,));
  }
}
