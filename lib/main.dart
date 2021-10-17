import 'package:flutter/material.dart';

void main() => runApp(BelajarRowColumn());

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Row Column',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Aplikasiku(),
    );
  }
}

class Aplikasiku extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Row & Column'),
    ),
    body: Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(Icons.home, color: Colors.blue), Text('Home', style: TextStyle(color: Colors.blue))],
          )),
          Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(Icons.search), Text('Search')],
          )),
          Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(Icons.account_circle), Text('Profile')],
          )),
          new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.zoom_in),
              Icon(Icons.play_arrow_outlined),
              Icon(Icons.circle_outlined),
              Icon(Icons.check_box_outline_blank),
              Icon(Icons.more_horiz_outlined),
              ],
          ),
        ],
      ),
    ),
    );
  }
}

