import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'ASMRTechnique.dart';

class GuidedImageryArticle extends StatefulWidget {
  GuidedImageryArticle({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _GuidedImageryArticlePageState createState() =>
      _GuidedImageryArticlePageState();
}

class _GuidedImageryArticlePageState extends State<GuidedImageryArticle> {
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
        backgroundColor: Colors.pink[200],
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
                            'Guided imagery or visualization therapy is a cognitive-behavioral meditation technique in which a person is guided to imagine a relaxing scene or series of experiences. Clinical observations suggest that visualization "induced" images can have a profound effect on behavior because individuals who visualize an imaged '
                            'scene react as though they were actually present to that scene. Guided imagery techniques have been shown to be effective in helping individuals learn or modify behaviors such as: learning to relax; changing or controlling their negative emotions in response to a particular situation such as loss of job, death, or finance problems; coping with difficult situations; becoming more motivated; and experimenting with ways to manage stressful or anxiety producing situations. In addition, guided imagery techniques have been applied and '
                            'found to be effective in individuals with phobias, mild to moderate depression, generalized anxiety disorders, posttraumatic stress disorder, and obessessive compulsive disorder, among other psychiatric disorders. ',
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
                          builder: (context) => ASMRTechnique(
                                title: "ASMR",
                              )));
                },
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal[200],
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
