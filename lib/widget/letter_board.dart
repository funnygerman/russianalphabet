import 'package:flutter/material.dart';
import 'package:russianalphabet/consts/letters.dart';
import 'package:russianalphabet/i18n/app_localizations.dart';
import 'package:russianalphabet/model/letter.dart';
import 'package:russianalphabet/model/letter_card_item.dart';

class LetterBoard extends StatelessWidget {
  final int boardWidth;
  final int boardHeight;
  final List<LetterCardItem> items;
  final Function(String) onItemClick;

  LetterBoard(
      {this.boardWidth, this.boardHeight, this.items, this.onItemClick});

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
      elements.add(
        Expanded(
          child: buildLetterCard(context, rowNumber * boardWidth + i),
        ),
      );
    }
    return elements;
  }

  Widget buildLetterCard(BuildContext context, int index) {
    LetterCardItem currentItem = items[index];
    String letterKey = currentItem.key;
    return GestureDetector(
      onTap: () {
        print('The letter with key $letterKey was pressed');
        // onItemClick(letterKey);
        Letter pressedLetter = letters[letterKey];
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return LetterDetailsDialog(pressedLetter: pressedLetter);
            });
      },
      child: Container(
        margin: EdgeInsets.all(4.0),
        color: Colors.blue,
        child: Center(
          child: Text(
            currentItem.text,
          ),
        ),
      ),
    );
  }
}

class LetterDetailsDialog extends StatelessWidget {
  final Letter pressedLetter;

  LetterDetailsDialog({this.pressedLetter});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      titlePadding: EdgeInsets.all(0.0),
      title: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.yellow,
              child: Center(
                child: Text(pressedLetter.letter),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.teal,
              child: Center(
                child: Text(AppLocalizations.of(context)
                    .string(pressedLetter.transcriptionStrKey)),
              ),
            ),
          ),
        ],
      ),
      children: <Widget>[
        Text(AppLocalizations.of(context).string(pressedLetter.exampleStrKey)),
      ],
    );
  }
}
