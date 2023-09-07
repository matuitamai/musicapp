import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const BottomNavigationBarExampleApp());

bool _isDarkMode = false;

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    MyWidget(),
    const MyFindWidget(),
    const CardListExample(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                _isDarkMode ? Icons.brightness_high : Icons.brightness_low,
              ),
              onPressed: () {
                _toggleTheme();
              },
            )
          ],
        ),
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
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              '今すぐ聴く',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 16),
            child: Text(
              'ピックアップ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _children1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 16),
            child: Text(
              'ピックアップ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _children2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 16),
            child: Text(
              'ピックアップ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _children3,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get _children1 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );

  List<Widget> get _children2 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );

  List<Widget> get _children3 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );
}

class MyFindWidget extends StatelessWidget {
  const MyFindWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              '見つける',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 16),
            child: Text(
              'ピックアップ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _children1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 16),
            child: Text(
              'ピックアップ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _children2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 16),
            child: Text(
              'ピックアップ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _children3,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get _children1 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );

  List<Widget> get _children2 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );

  List<Widget> get _children3 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );
}

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CardListExample(),
      ),
    );
  }
}

class CardListExample extends StatelessWidget {
  const CardListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(3.0),
          child: Text(
            'ラジオ',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 16),
          child: Text(
            'ピックアップ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const CardItem(),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 16),
          child: Text(
            'ピックアップ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const CardItem(),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 16),
          child: Text(
            'ピックアップ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const CardItem(), // Add more CardItems here

        const Padding(
          padding: EdgeInsets.only(left: 8, top: 16),
          child: Text(
            'ピックアップ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _children1,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 16),
          child: Text(
            'ピックアップ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _children2,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 16),
          child: Text(
            'ピックアップ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _children3,
          ),
        ),
      ],
    );
  }

  List<Widget> get _children1 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );

  List<Widget> get _children2 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );

  List<Widget> get _children3 => List<Widget>.generate(
        8,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors
                  .primaries[Random.secure().nextInt(Colors.primaries.length)],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      );
}

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  Color _getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cardColor = _getRandomColor();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: cardColor,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 300, // Adjust the height as needed
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // You can add any content you want here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
