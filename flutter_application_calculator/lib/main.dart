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
      home: HomePage()
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
    Size size = MediaQuery.of(context).size;

    @override
    
    dynamic cal =0;

    void numberone(){
      setState(() {
        if(cal==0){
          cal= 1;
        }else{
          cal = cal + "1";
        }
      });
    }

    return Scaffold(
      body: Column(
        children:[
          

          
           Container(
          color: Colors.grey[400],
          width: size.width,
          height:size.height*0.23,
          child: Text(cal.toString(),style: TextStyle(color: Colors.blue,fontSize: 50,fontWeight:FontWeight.w800),),
          alignment: Alignment.center,
          
          
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,),
          child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
            children: <Widget> [
              Component1( Text('%',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('CE',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('C',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Icon(Icons.backspace) , () { },Colors.grey[300]),
              Component1( Text('1/x',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('x2',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('√',style: TextStyle(fontSize: 30),), () { },Colors.grey[300]),
              Component1( Text('/',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('7',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('8',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('9',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('x',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('4',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('5',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('6',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('-',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('1',style: TextStyle(fontSize: 30),) , () { numberone(); },Colors.white),
              Component1( Text('2',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('3',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('+',style: TextStyle(fontSize: 30),) , () { },Colors.grey[300]),
              Component1( Text('+/-',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('0',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('.',style: TextStyle(fontSize: 30),) , () { },Colors.white),
              Component1( Text('=',style: TextStyle(fontSize: 30),) , () { },Colors.blue),

            ],
          ),
        ),)
        ]
      ),
    );
  }






  // ignore: non_constant_identifier_names
  Widget Component1(Widget icon , VoidCallback voidCallback,color){
  return Material(
    elevation: 20,
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(20)),
    child: IconButton(
      icon: icon,
      onPressed: voidCallback,

    ),
  );

}
}






