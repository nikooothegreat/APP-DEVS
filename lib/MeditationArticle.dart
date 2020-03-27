import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'HypnosisTechnique.dart';

class MeditationArticle extends StatefulWidget {
  MeditationArticle({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MeditationArticlePageState createState() => _MeditationArticlePageState();
}

class _MeditationArticlePageState extends State<MeditationArticle> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lobster',
              fontSize: 29), // changing style of text on appBar
        ),
        centerTitle: true,
        // centering title
        backgroundColor: Colors.cyanAccent,
        // changing background color on appBar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Meditation has been part of Eastern and Western spiritual practice for centuries. Only recently has meditation been applied to the management of medical disorders. '
                            'Although it is often used in spiritual development, the practice of meditation requires no particular belief system. The type that is most applicable to the medical setting is concentrative meditation. '
                            'This involves narrowly focusing the attention of the mind onto a sound or symbol. Transcendental meditation has been shown to be associated with decreased oxygen consumption, carbon dioxide production, respiratory rate, and minute ventilation. '
                            'Benson demystified the technique and instructed subjects in the use of a simple meditative technique using the word "one." Benson termed this technique the relaxation response. Instructions for use of the relaxation response are simple : 1) Sit quietly; 2) Close your eyes; 3) Deeply relaxall your muscles; 4) Become aware of your breathing; 5) Each time you exhale say the word "one" (or another word of your choosing) silently to yourself; '
                            ' 6) If distracting thoughts enter your mind, simply brush them aside and return to repeating the word "relax;" 7) Do not evaluate your performance; 8) When 20 minutes has passed, sit quietly for a few moments, then gently and slowly open your eyes '
                            'Meditation is a relatively passive technique and requires acceptance on the part of the subject. Some adolescents, particularly those who have had experience with martial arts techniques, find the concept of meditation intriguing A 17-year-old male with mild hypertension ranging from 140 to 150 over 90 during a 6 month period was evaluated medically and found to have essential hypertension. He had experience with karate training and was receptive to the idea of using a meditation technique. '
                            'He was instructed in the relaxation response as described by Benson and encouraged in his belief in "mind control" techniques.  He practiced the technique for 15 minutes twice daily, and over a period of several months his blood pressure normalized. At a 6 month follow-up he was normotensive and reported continued practice of the meditation technique, which he enjoyed.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.5,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                )),
            Align(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => HypnosisTechnique(
                                title: "Hypnosis",
                              )));
                },
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[300],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

// For later use
/* body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ); */

}
