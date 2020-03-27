import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class UserTechniques extends StatefulWidget {
  UserTechniques({Key key, this.title, this.techniques}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final Map techniques;

  @override
  _UserTechniquesPageState createState() => _UserTechniquesPageState();
}

class _UserTechniquesPageState extends State<UserTechniques> {
  final DatabaseReference ref =
      FirebaseDatabase.instance.reference(); // database added

  var userDeleteEditingController = TextEditingController();

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
          '${widget.techniques['Category']}',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lobster',
              fontSize: 29), // changing style of text on appBar
        ),
        centerTitle: true,
        // centering title
        backgroundColor: Colors.tealAccent[400],
        // changing background color on appBar
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${widget.techniques['User Technique']}',
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
            child: TextField(
              controller: userDeleteEditingController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter your given number to delete your technique: ',
                fillColor: Colors.white,
                filled: true,
                labelStyle: TextStyle(color: Colors.black, fontSize: 14.5),
              ),
              autofocus: false,
              focusNode: _focusnode,
              maxLines: null,
              keyboardType: TextInputType.text,
            ),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              ref
                  .child("new techniques/" +
                      userDeleteEditingController.text.toString())
                  .remove();
              success(context);
            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: 280,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF37474F),
                    Color(0xFF37474F),
                    Color(0xFF37474F),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Delete Technique',
                style: TextStyle(fontSize: 16.5),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Colors.teal[300],
    );
  }

  void success(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "Your technique has been successfully deleted!",
        style: TextStyle(fontSize: 16.5, fontFamily: 'Roboto'),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(Duration(seconds: 2), () {
            Navigator.of(context).pop(true);
          });
          return alertDialog;
        });
  }
}
