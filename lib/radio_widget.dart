import 'package:flutter/material.dart';
import 'dart:math';

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: radiowidget(),
      ),
    );
  }
}

class radiowidget extends StatelessWidget {
  const radiowidget({super.key});

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
