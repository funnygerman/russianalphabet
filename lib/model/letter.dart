import 'package:flutter/cupertino.dart';

class Letter {
  final String key;
  final String letter;
  final String transcriptionStrKey;
  final String exampleStrKey;

  const Letter(
      {@required this.key,
      @required this.letter,
      @required this.transcriptionStrKey,
      @required this.exampleStrKey});
}
