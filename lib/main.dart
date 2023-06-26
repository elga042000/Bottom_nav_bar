import 'package:flutter/material.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<int> _badgeCounts = [0, 0, 14, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: Center(
        child: Text('Content for Tab ${_currentIndex + 1}'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: Color.fromARGB(95, 42, 41, 41),
        /*  onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },*/
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.menu_outlined),
                _badgeCounts[0] > 0
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            _badgeCounts[0].toString(),
                            style: TextStyle(
                              color: Color.fromARGB(255, 221, 218, 218),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.contactless),
                _badgeCounts[1] > 0
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            _badgeCounts[1].toString(),
                            style: TextStyle(
                              color: Color.fromARGB(255, 224, 219, 219),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.discount),
                _badgeCounts[2] > 0
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            _badgeCounts[2].toString(),
                            style: TextStyle(
                              color: Color.fromARGB(255, 248, 246, 246),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            label: 'Tab 3',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.settings),
                _badgeCounts[3] > 0
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          constraints: BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            _badgeCounts[3].toString(),
                            style: TextStyle(
                              color: Color.fromARGB(255, 239, 232, 232),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            label: 'Tab 4',
          ),
        ],
      ),
    );
  }
}
