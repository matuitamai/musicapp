import 'package:flutter/material.dart';


class Song {
  final String name;
  final String singer;
  final String image;
  final dynamic videoUr;
  final Color color;
  Song(
      {required this.name,
      required this.singer,
      required this.image,
      required this.videoUr,
      required this.color});
}

List<Song> mostPopular = [
  Song(
      name: "born to die",
      image: "assets/picture1.jpg",
      singer: "Lana del rey",
      videoUr: "assets/022_BPM90.mp3",
      color: Colors.grey),
  Song(
      name: "i want it all",
      image: "assets/picture2.jpg",
      singer: "Queen",
      videoUr: "assets/59_BPM77.mp3",
      color: Colors.green),
  Song(
      name: "highway to hell",
      image: "assets/picture3.jpg",
      singer: "AC/DC",
      videoUr: "assets/65_BPM93.mp3",
      color: Colors.orange),
Song(
      name: "ball w/o you",
      image: "assets/picture4.jpg",
      singer: "21savage",
      videoUr: "assets/116_BPM190.mp3",
      color: Colors.black),
Song(
      name: "smells like teen spirit",
      image: "assets/picture5.jpg",
      singer: "NIVANA",
      videoUr: "assets/130_BPM158.mp3",
      color: Colors.blue),
Song(
      name: "bad guy",
      image: "assets/picture6.jpg",
      singer: "Billie Eilish",
      videoUr: "assets/281_BPM100.mp3",
      color: Colors.red)
  
];