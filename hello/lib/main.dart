import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          // child: new Text("Hello World"),
          // child: new Text(wordPair.asPascalCase),
          child: new RandowWords(),
        ),
      ),
    );
  }
}

// 封装的随机单词的类
class RandowWords extends StatefulWidget{
  @override
  createState() => new RandomWordsState();
  }
  
  class RandomWordsState extends State<RandowWords>{
    @override
    Widget build(BuildContext context) {
      final wordPair = new WordPair.random();
      return new Text(wordPair.asPascalCase);
  }
  
}


