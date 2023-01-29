// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class TextFlipCard extends StatelessWidget {
  final Color colorFront;
  final Color colorBack;
  final String textFront;
  final String textBack;
  final double _radius;

  const TextFlipCard(
      {Key? key,
      required this.colorFront,
      required this.colorBack,
      required this.textFront,
      required this.textBack,
      double radius = 5})
      : _radius = radius,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.VERTICAL,
      front: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: colorFront,
          ),
          color: colorFront,
          borderRadius: BorderRadius.all(
            Radius.circular(_radius),
          ),
        ),
        child: Text(textFront),
      ),
      back: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: colorBack,
          ),
          color: colorBack,
          borderRadius: BorderRadius.all(
            Radius.circular(_radius),
          ),
        ),
        child: Text(textBack),
      ),
    );
  }
}
