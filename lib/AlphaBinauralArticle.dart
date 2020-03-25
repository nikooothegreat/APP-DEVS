import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'LaughterTechnique.dart';

class AlphaBinauralArticle extends StatefulWidget {
  AlphaBinauralArticle({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _AlphaBinauralArticlePageState createState() =>
      _AlphaBinauralArticlePageState();
}

class _AlphaBinauralArticlePageState extends State<AlphaBinauralArticle> {
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
              fontSize: 33), // changing style of text on appBar
        ),
        centerTitle: true,
        // centering title
        backgroundColor: Colors.purpleAccent[100],
        // changing background color on appBar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
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
                            'Generally, the human brain has the same structure as other mammals. The brain is the most complex part of the human body. Brain wave activity is measured by the number of waves, or electrical frequencies that occur in a given unit of time that are measured in Hertz (Hz). This organ is very important because intelligence, senses, body movements, and behaviors depend on it. There are four types of basic human brainwave; Delta, Theta, Alpha and Beta waves which structure the electroencephalography (EEG). '
                            'Alpha wave is associated with a relaxed and calm condition while Beta wave is associated with busy thinking, focus and alert. Delta wave is the slowest band of brain waves, linked with deep sleep while Theta wave associated with deep relaxation. The EEG is the recording of the oscillation of brain electrical activity from electrode along the scalp. '
                            'Theoretically, the Alpha brainwave is related to relax state. Figure 6 shows that 61% of the subjects experience increment  in the Alpha brainwave after listening to the binaural beat and the subjects become more relaxed because of the stimuli given. The other 39% of subjects are experiencing decrement  in the Alpha brainwave after listening to binaural beat. This happens when some of the subjects are not able to relax after listening to the binaural beat sound. It could not be that the '
                            'only one time experience is not enough to bring down the level beta wave. It has to be listened from time to time in order to achieve the desired state. This is because the binaural beat acts same as supplement that needs to be taken daily to achieve an optimum result. ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.5,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                )),
            Container(
              child: Image.asset('images/Figure.png'),
            ),
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
                          builder: (context) => LaughterTechnique(
                                title: "Laughter",
                              )));
                },
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue[200],
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
