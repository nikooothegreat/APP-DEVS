import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'GumTechnique.dart';

class MusicArticle extends StatefulWidget {
  MusicArticle({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MusicArticlePageState createState() => _MusicArticlePageState();
}

class _MusicArticlePageState extends State<MusicArticle> {
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
                            'Approaches for alleviating workplace stress include altering actual demands, increasing individuals’ abilities to cope by altering cognitive appraisals, behavioural responses and physiological responses and supporting existing abilities to cope. The use of music to reduce stress is considered a palliative coping approach in that individuals’ internal psychological strategies are enhanced in order to '
                            'manage tension and minimize distress. Music techniques employed frequently for stress management include music listening, guided imagery and music, and progressive muscle relaxation to music; three treatment modalities, including guided music listening with counselling, instrumental group improvisation and preferred music listening with progressive muscle relaxation, were employed with psychiatric prisoner patients. Treatment results from all three conditions revealed that patients experienced significant improvement in state of relaxation, mood and thoughts about self. '
                            'A survey of information offered to parents about benefits of music in parenting magazines showed that the role of music in reducing stress or changing mood was the most frequently mentioned. The authors remark that although the recommendations were based mostly on intuition, there is a growing body of research that supports these intuitions. The authors list a long list of researchers and authors in education, psychology and therapy who published their studies on music as a stress reducer for children between 1999 and 2005. '
                            'Music may act as an anxiolytic treatment, so that experiences of anxiety are prevented or reduced. The study explored the effect of experimenterdetermined sedative music on participants’ subjective and physiological stress levels following a cognitive stressor involving 12 min of preparation of an oral presentation. A control condition, that of sitting in silence during preparation for the oral presentation, revealed increases in subjective anxiety, systolic blood pressure and heart rate. The treatment condition, that of presence of the music, revealed a significant decrease in subjective anxiety, systolic blood pressure and heart rate. The findings of the study are promising when one considers stressors in the air traffic control occupation, whether the stressors are perceived as mildly or strongly adversary.'
                            '"Test anxiety" is another example to daily stress. Music is known to affect the individual by sympathetic resonance. The time spent during the examination could be made more relaxing by playing soothing music. Music has gained support in today’s literature as an intervention that decreases anxiety levels in a variety of clinical situations. The effects of music on the anxiety response mechanism have been studied by only a few nursing researchers. Based on a psychophysiological theory synthesized from the literature, certain types of music induce relaxation and pleasure responses which reduce activity in the neuroendocrine and sympathetic nervous systems, resulting in decreased anxiety, heart rate, respiratory rate and increased temperature. Music, which has been used across the ages to soothe and relax, has been proposed as a means of decreasing test anxiety among college students. '
                            'Finally, it is an oversimplified view to assume that people respond similarly to sedative music. Responses to music are based on factors such as familiarity, preference, current mood and music training. Recently, neuropsychological research is contributing evidence of neuroanatomical parallels between processing of daily emotions and processing of emotional responses to music Such parallels will lead to a more thorough understanding of the influence of music on brain-emotion structure). ',
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
                          builder: (context) => GumTechnique(
                                title: "Chewing Gum",
                              )));
                },
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[200],
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
