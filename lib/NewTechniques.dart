import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'UserTechniques.dart';

class NewTechniques extends StatefulWidget {
  NewTechniques({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _NewTechniquesPageState createState() => _NewTechniquesPageState();
}

class _NewTechniquesPageState extends State<NewTechniques> {
  final List colorSelector = [
    Colors.pink[50],
    Colors.cyan[200],
    Colors.indigo[200],
    Colors.yellowAccent[100],
    Colors.purple[100],
    Colors.cyanAccent[100]
  ];

  // generates a new Random object
  final _random = new Random();

  final DatabaseReference ref =
      FirebaseDatabase.instance.reference(); // database added
  var TechniqueList = [];

  _NewTechniquesPageState() {
    ref.child("new techniques/").once().then((ds) {
      print(ds.value);

      TechniqueList.clear();
      var initList = [];
      ds.value.forEach((k, v) {
        initList.add(v);
      });

      setState(() {
        TechniqueList = initList;
      });
      print(TechniqueList);
    }).catchError((e) {
      print("Failed to get the new techniques." + e.toString());
    });
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
    var _textInput;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'New Techniques',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lobster',
              fontSize: 29), // changing style of text on appBar
        ),
        centerTitle: true, // centering title
        backgroundColor:
            Colors.tealAccent[400], // changing background color on appBar
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
      body: Center(
          child: Column(children: <Widget>[
        Container(
            child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Choose from one of the technique categories below:',
                style: TextStyle(
                    color: Colors.black, fontSize: 15.5, fontFamily: 'Roboto'),
              ),
            ],
          ),
        )),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: TechniqueList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => UserTechniques(
                                title: "${TechniqueList[index]['Category']}",
                                techniques: TechniqueList[index])));
                  },
                  title: Container(
                    height: 50,
                    color: colorSelector[_random.nextInt(colorSelector.length)],
                    child: Row(children: <Widget>[
                      Text(
                        '${TechniqueList[index]['Category']}',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Domine',
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                );
              }),
        ),
      ])),
      backgroundColor: Colors.teal[300],
    );
  }
}
