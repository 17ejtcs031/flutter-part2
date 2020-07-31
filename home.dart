import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

myapp() {
  //Use to set the color of status-bar
  FlutterStatusbarcolor.setStatusBarColor(Colors.red[700]);

  var urlLogo =
      'https://raw.githubusercontent.com/17ejtcs031/flutter-part2/master/lw_logo.jpg';

  var profileUrl =
      'https://raw.githubusercontent.com/17ejtcs031/flutter-part2/master/bw-1.jpg';
  var lwlogo = Image.network(
    urlLogo,
    width: double.infinity,
    height: double.infinity,
  );

  var myicon = Icon(Icons.person);

  liketoast() {
    Fluttertoast.showToast(
        msg: "You are Selected...!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.white70,
        textColor: Colors.black,
        fontSize: 20.0);
  }

  mytoast() {
    Fluttertoast.showToast(
        msg: "This is your Profile Page",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.white70,
        textColor: Colors.black,
        fontSize: 20.0);
  }

  //onpressed take a method having void type only

  var myiconButton = IconButton(icon: myicon, onPressed: mytoast);

  var myappbar = AppBar(
    backgroundColor: Colors.red[900],
    title: Text('Linux World',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30)),
    leading: lwlogo,
    actions: <Widget>[
      myiconButton,
    ],
  );

  var mybody = Container(
      decoration: BoxDecoration(
          color: Colors.red[900], borderRadius: BorderRadius.circular(5)),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          // container for big box ,red one
          Container(
              width: 290,
              height: 260,
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.red[700],
                border: Border.all(
                  color: Colors.red[900],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Elena Gilbart',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white70)),
                  Text(
                    'elenagilbart24@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  )
                ],
              )),

          //small circle
          GestureDetector(
            onDoubleTap: liketoast,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    profileUrl,
                    scale: 1,
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                  color: Colors.red[900],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(75),
              ),
              width: 140,
              height: 140,
            ),
            //color: Colors.black87,
          )
        ],
      ));

  var myhome = Scaffold(
    appBar: myappbar,
    body: Center(child: mybody),
  );

  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}

/* Container(
    // set height and width of the container
    width: 300,
    height: 300,
    color: Colors.grey[350],

    margin: EdgeInsets.all(25), //give margin from all edges
    alignment: Alignment.topCenter,
    //to get shape like box on another box
*/
