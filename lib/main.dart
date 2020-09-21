import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:russianalphabet/consts/letter_card_items.dart';
import 'package:russianalphabet/widget/letter_board.dart';

import 'consts/letters.dart';
import 'i18n/app_localizations.dart';
import 'model/letter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en', 'EN'),
        Locale('de', 'DE'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) =>
          !supportedLocales.contains(locale) ? locale : supportedLocales.first,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LetterBoardPage(),
    );
  }
}

class LetterBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void showLetterDialog(String letterKey) {
      Letter pressedLetter = letters[letterKey];
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return LetterDetailsDialog(pressedLetter: pressedLetter);
          });
    }

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(AppLocalizations.of(context).string('app_title')),
      ),
      body: LetterBoard(
        boardWidth: 5,
        boardHeight: 7,
        items: letterCardItems,
        onItemClick: showLetterDialog,
      ),
    );
  }
}
