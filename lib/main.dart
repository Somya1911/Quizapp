import 'package:flutter/material.dart';
import './quiz1.dart';
void main() {
  runApp(
    new MaterialApp(
      home: new CoronaQuiz(),
    )
  );
}
class CoronaQuiz extends StatefulWidget{
  @override 
  State<StatefulWidget> createState() {
    return new CoronaQuizState();
  }
}
class CoronaQuizState extends State<CoronaQuiz> {
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Quiz"),
        backgroundColor: Colors.green,
    ),

    body: new Container(
      margin: const EdgeInsets.all(15.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          new MaterialButton(
            height: 50.0,
            color: Colors.green,
            onPressed: startQuiz(),
            child: new Text("Quiz 1",
            style: new TextStyle(fontSize: 18.0,
            color: Colors.white
            ),),
            )


        ],
      ),
      ),


    );
  }
  //method to start quiz
  dynamic startQuiz(){
    setState((){
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Quiz1()));


    });
  }
}
