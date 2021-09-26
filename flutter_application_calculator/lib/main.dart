import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('simple calculator'),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))),

      ),
      body: SafeArea( 
        child: SimpleCalculator(
          theme: CalculatorThemeData(

            borderWidth:12.5 ,
            borderColor: Colors.grey,
            expressionStyle: TextStyle(color: Colors.white),
            commandColor: Colors.grey[600],
            commandStyle: TextStyle(color: Colors.white,fontSize: 30)
          ),
        ),
      ),
    );
  }
}



