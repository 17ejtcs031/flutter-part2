import 'package:flutter/material.dart';
import 'package:app2/ui/home.dart';

void main() {
  //run MyApp class
  runApp(MyApp());
}

//use to maintain the current state or for hot reload
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Inside the class call myapp method
    return myapp();
  }
}
