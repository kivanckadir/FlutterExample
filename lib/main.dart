import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      title: 'Xinerji Technologies',

      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),

      home: new MyHomePage(
          title: 'Xinerji Technologies'
      )
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Alignment _alignment = Alignment.bottomLeft;
  int _loop = 0;

  void _move() {
    _loop++;

    setState(() {
      if(_loop%7==0){
        _alignment = Alignment.bottomLeft;
      } else if(_loop%7==1){
        _alignment = Alignment.centerLeft;
      } else if(_loop%7==2){
        _alignment = Alignment.topLeft;
      } else if(_loop%7==3){
        _alignment = Alignment.topCenter;
      } else if(_loop%7==4){
        _alignment = Alignment.topRight;
      } else if(_loop%7==5){
        _alignment = Alignment.centerRight;
      } else if(_loop%7==6){
        _alignment = Alignment.bottomCenter;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(
        title: new Text(widget.title),
      ),

      body: new Center(
        child: new Container(
          alignment: _alignment,
          child:
            new Icon(
              Icons.mood,
              color: Colors.deepOrange,
              size: 100.0,),
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: _move,
        tooltip: 'Move',
        child: new Icon(Icons.play_arrow),
      ),
    );
  }
}
