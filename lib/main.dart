import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import 'core/common/my_flip_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<TextFlipCard> cards = [
    const TextFlipCard(
      colorFront: Colors.orange,
      colorBack: Colors.brown,
      textFront: "Front",
      textBack: "Back",
    ),
    const TextFlipCard(
      colorFront: Colors.green,
      colorBack: Colors.grey,
      textFront: "Front",
      textBack: "Back",
    ),
    const TextFlipCard(
      colorFront: Colors.blue,
      colorBack: Colors.red,
      textFront: "Front",
      textBack: "Back",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swiped Flip Card"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.20,
          child: AppinioSwiper(
            cards: cards,
          ),
        ),
      ),
    );
  }
}
