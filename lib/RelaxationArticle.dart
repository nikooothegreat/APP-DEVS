import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'MeditationTechnique.dart';

class RelaxationArticle extends StatefulWidget {
  RelaxationArticle({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _RelaxationArticlePageState createState() => _RelaxationArticlePageState();
}

class _RelaxationArticlePageState extends State<RelaxationArticle> {
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
    var _focusnode;
    var _newreplycontroller;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lobster',
              fontSize: 35), // changing style of text on appBar
        ),
        centerTitle: true, // centering title
        backgroundColor:
            Colors.cyan[300], // changing background color on appBar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                            'Progressive muscular relaxation teaches one to be aware of varying degrees of muscle tension throughout the body.Through a series of exercises  alternately tensing and relaxing various muscle groups, a deep state of relaxation is produced.  Particular emphasis is placed on perceiving the transition from muscular tension to relaxation. The process is repeated with successive muscle groups throughout the body until deep muscular relaxation is achieved. '
                            'Abbreviated versions of Jacobson’s original technique have been developed that can be completed in approximately 15 minutes. The progressive muscular relaxation technique does not require mental imagery or special equipment and the rationale for its use is understood by most patients.The following case illustrates the use of the progressive muscular relaxation technique. A 15-year-old girl undergoing chemotherapy for a lymphoma began to experience extreme anxiety each time intravenous therapy was instituted. '
                            'She described many kinesthetic sensations during these episodes which included coldness of the extremities, abdominal discomfort, "goosebumps", and tachycardia. Although she was unable to use mental imagery techniques successfully, she was very receptive to the progressive muscular relaxation technique.With sequential tensing and relaxing of various muscle groups and attention to the consequent sensations over a 15-minute period, she was able to attain astate of deep relaxation and decreased anxiety. She was able to tolerate subsequent intravenous procedures without undue anxiety while listening to a tape recording of the technique.',
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
                          builder: (context) => MeditationTechnique(
                                title: "Meditation",
                              )));
                },
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.tealAccent,
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
