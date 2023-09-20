import 'package:flutter/material.dart';
import 'find_widget.dart';
import 'listen_widget.dart';
import 'radio_widget.dart';

bool _isDarkMode = false;

class musicApp extends StatelessWidget {
  const musicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => page();
}

class page extends State<BottomBar> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    listenWidget(),
    const findWidget(),
    const radiowidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.transcribe),
            label: '今すぐ聴く',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swipe_right),
            label: '見つける',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            label: 'ラジオ',
          ),
        ],
        iconSize: 20,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 224, 32, 32),
        onTap: _onItemTapped,
      ),
    );
  }
}