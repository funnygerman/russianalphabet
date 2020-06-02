import 'package:flutter/material.dart';
import 'package:russianalphabet/consts/letters.dart';

class LetterBoard extends StatelessWidget {
  final int boardWidth;
  final int boardHeight;

  LetterBoard({this.boardWidth, this.boardHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _addBoardRows(),
      ),
    );
  }

  List<Widget> _addBoardRows() {
    var rows = <Widget>[];
    for (var i = 0; i < boardHeight; i++) {
      rows.add(Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _addRowElements(i),
        ),
      ));
    }
    return rows;
  }

  List<Widget> _addRowElements(int rowNumber) {
    var elements = <Widget>[];
    for (var i = 0; i < boardWidth; i++) {
      elements.add(
        Expanded(
          child: Container(
            margin: EdgeInsets.all(4.0),
            color: Colors.blue,
            child: Center(
              child: Text(
                LETTERS[rowNumber * boardWidth + i].letter,
              ),
            ),
          ),
        ),
      );
    }
    return elements;
  }
}
