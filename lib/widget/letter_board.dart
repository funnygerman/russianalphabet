import 'package:flutter/material.dart';
import 'package:russianalphabet/model/letter_card_item.dart';

class LetterBoard extends StatelessWidget {
  final int boardWidth;
  final int boardHeight;
  final List<LetterCardItem> items;

  LetterBoard({this.boardWidth, this.boardHeight, this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _addBoardRows(context),
      ),
    );
  }

  List<Widget> _addBoardRows(BuildContext context) {
    var rows = <Widget>[];
    for (var i = 0; i < boardHeight; i++) {
      rows.add(Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _addRowElements(i, context),
        ),
      ));
    }
    return rows;
  }

  List<Widget> _addRowElements(int rowNumber, BuildContext context) {
    var elements = <Widget>[];
    for (var i = 0; i < boardWidth; i++) {
      LetterCardItem currentItem = items[rowNumber * boardWidth + i];
      elements.add(
        Expanded(
          child: LetterCard(
            letterKey: currentItem.key,
            text: currentItem.text,
          ),
        ),
      );
    }
    return elements;
  }
}

class LetterCard extends StatelessWidget {
  final String letterKey;
  final String text;

  LetterCard({this.letterKey, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('The letter with key $letterKey was pressed'),
      child: Container(
        margin: EdgeInsets.all(4.0),
        color: Colors.blue,
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
