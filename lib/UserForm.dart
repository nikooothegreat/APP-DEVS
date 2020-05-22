import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class UserForm extends StatefulWidget {
  UserForm({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final DatabaseReference ref =
      FirebaseDatabase.instance.reference(); // database added

  var userInputEditingController = TextEditingController();
  var userCategoryEditingController = TextEditingController();

  var TechniqueList = [];
  var timestamp = new DateTime.now().millisecond;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var _focusnode;
    var timestamp = new DateTime.now().millisecond;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'Add Your Own Technique',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Lobster',
              fontSize: 26), // changing style of text on appBar
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
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              height: 60,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Please make sure that your message is kind to others when reading. Thank you.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Roboto'),
                    ),
                  ],
                ),
              )),
          Container(
            child: TextField(
              controller: userCategoryEditingController,
              decoration: const InputDecoration(
                labelText: 'Category of your technique (1-2 words only): ',
                fillColor: Colors.white,
                filled: true,
                labelStyle: TextStyle(color: Colors.black, fontSize: 16.3),
              ),
              autofocus: false,
              focusNode: _focusnode,
              maxLines: null,
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            child: TextField(
              controller: userInputEditingController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter a description of your technique here: ',
                fillColor: Colors.white,
                filled: true,
                labelStyle: TextStyle(color: Colors.black, fontSize: 17),
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
              print(userInputEditingController.text.toString());
              // writing the data: key, value
              ref.child("new techniques/" + timestamp.toString()).set({
                "Category": userCategoryEditingController.text.toString(),
                "User Technique": userInputEditingController.text.toString(),
                "timestamp": timestamp,
              }).then((res) {
                print("technique added!");
              }).catchError((e) {
                print("Failed to add technique." + e.toString());
              });
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
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 16.5),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
                width: 500,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Write down this number to delete your technique!\n',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      TextSpan(
                        text: timestamp.toString(),
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )),
          ),
        ]),
      ),
      backgroundColor: Colors.teal[300],
    );
  }

  void success(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "Your technique has been successfully added!",
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
