// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
        title: 'Startup Name Generator',
        home: RandomWords(),
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.orangeAccent,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.red),
              headline5: TextStyle(color: Colors.white, fontSize: 50)),
        ));
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random()
    // return Text(wordPair.asPascalCase);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Startup Name Generator',
            style: Theme.of(context).textTheme.headline5,
          ),
          // backgroundColor: Colors.pink[100],
        ),
        body: _buildSuggestions(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: null,
            tooltip: "That's a bingo",
            child: Icon(Icons.ac_unit)),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text(
                  'Item 1',
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
                ),
                onTap: () {
                  print("whoa"); // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text(
                  'Item 2',
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ));
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(56.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
