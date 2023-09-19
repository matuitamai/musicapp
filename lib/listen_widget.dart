import 'package:flutter/material.dart';
import 'dart:math';

class listenWidget extends StatelessWidget {
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