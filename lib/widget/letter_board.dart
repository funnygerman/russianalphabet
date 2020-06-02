import 'package:flutter/material.dart';
import 'package:russianalphabet/consts/letters.dart';
import 'package:russianalphabet/i18n/app_localizations.dart';
import 'package:russianalphabet/model/letter.dart';

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
          child: LetterCard(
            letter: LETTERS[rowNumber * boardWidth + i],
            showCardText: (letter) {
              if (letter != EMPTY_LETTER) {
                return AppLocalizations.of(context)
                    .string(letter.exampleStrKey);
              } else {
                return '';
              }
            },
          ),
        ),
      );
    }
    return elements;
  }
}

class LetterCard extends StatelessWidget {
  final Letter letter;
  final String Function(Letter) showCardText;

  LetterCard({this.letter, this.showCardText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('The letter with key ${letter.key} was pressed'),
      child: Container(
        margin: EdgeInsets.all(4.0),
        color: Colors.blue,
        child: Center(
          child: Text(
            showCardText(letter),
          ),
        ),
      ),
    );
  }
}
