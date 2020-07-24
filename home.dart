import 'package:flutter/material.dart';

myapp() {
  var mybody = Container(
    width: 250,
    height: 250,
    //color: Colors.yellow,
    alignment: Alignment.bottomCenter,
    child: Text(
      'LinkedIn',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 24,
      ),
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://github.com/prakhar1508/flutter1/raw/master/logo.png'),
        ),
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          width: 5,
          color: Colors.white54,
        )),
  );

  // ignore: non_constant_identifier_names
  press_for_search() {
    print("search button pressed...");
  }

  var iconforsearch = Icon(Icons.search);
  var searchbutton =
      IconButton(icon: iconforsearch, onPressed: press_for_search);

  var myhome = Scaffold(
    backgroundColor: Colors.lightBlue[200],
    appBar: AppBar(
      title: Text('Social Media Apps'),
      backgroundColor: Colors.black,
      actions: <Widget>[searchbutton],
    ),
    body: Center(
      child: mybody,
    ),
  );
  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
