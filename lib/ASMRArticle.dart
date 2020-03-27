import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'AlphaBinauralTechnique.dart';

class ASMRArticle extends StatefulWidget {
  ASMRArticle({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ASMRArticlePageState createState() => _ASMRArticlePageState();
}

class _ASMRArticlePageState extends State<ASMRArticle> {
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
        backgroundColor: Colors.lightBlue[200],
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
                            'According to Barratt and Davis, autonomous sensory meridian response (ASMR) “is a previously unstudied sensory phenomenon in which individuals experience a tingling, static-like sensation ... in response to specific triggering thoughts, audio, and visual stimuli”. Jennifer Allen in 2010 coined the term autonomous sensory meridian response to describe '
                            'this sensation. The term, which is nonscientific, attempts to recognize the key characteristics of this euphoric, relaxing feeling, which is primarily felt in the scalp, neck, and spine, and sometimes reaches into the limbs. In this context, autonomous means that the individual possesses the ability to facilitate or produce the sensation at will. Sensory refers to the transmission of information through the nervous system and brain in response to an external trigger, and the individual’s simultaneous perception of this feedback with the senses. Meridian means the highest point or apex, and is also an antiquated term for euphoria. In traditional Chinese medicine, the term also '
                            'describes the pathways taken by the qi, or life energy, as it flows through the human body. A third meaning for meridian is the line or midpoint between the north and south poles. According to Richard , combining these last two meanings for meridian could be suggestive of how the nervous system is organized in a vertical sequence along the brain and spine, where the '
                            'response is primarily located. Response is how the individual reacts to a triggering stimulus or thought. This atypical response has most likely been experienced since childhood. It is often difficult for individuals to describe their response toexternal triggers, which often, but not always, include crisp sounds, whispering, and slow or repetitive movements. Ahuja enumerated a list of triggers that were identified on a now defunct website called ASMR-research.org; these included “exposure to slow, accented, or unique speech patterns”; “watching a person in a diligent and attentive manner '
                            'complete a task”; and “touch from another on head or back”. The triggers have a differential effect on individuals; a trigger that induces the response in one individual may have no effect, or may even be aversive, for someone else. ',
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
                          builder: (context) => AlphaBinauralTechnique(
                                title: "Alpha Binaural Beat",
                              )));
                },
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.yellowAccent[100],
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
