import 'package:flutter/material.dart';
import 'artist_list.dart';

class ListenWidget extends StatelessWidget {
  const ListenWidget({Key? key}) : super(key: key);


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
          Container(
            height: 300,
            child: Trackwidget(refresh),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: PlayerHome(currentSong),
          )
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }

  void setState(Null Function() param0) {}
}



PlayerHome(Song currentSong) {}

Song currentSong = Song(
    name: "title",
    singer: "singer",
    image: "assets/picture1.jpg",
    videoUr: "022_BPM90.mp3",
    color: Colors.black);
double currentSlider = 0;

class Trackwidget extends StatelessWidget {
  final Function() notifyParent;
  Trackwidget(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostPopular.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(10),
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: mostPopular[index].color,
                    blurRadius: 1,
                    spreadRadius: 0.3)
              ],
              image:
                  DecorationImage(image: AssetImage(mostPopular[index].image))),
        );
      },
    );
  }
}
