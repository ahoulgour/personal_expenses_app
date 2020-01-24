import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Container(  // usamos Container para poder darle width ya que Column y Card solo expanden segun sus hijos
            width: double.infinity,
            child: Card(
              color: Colors.amber,
              child: Text('CHART'),
            ),
          ),
          Card(
            child: Text('LIST PF TRX'),
          ),
        ],
      ),
    );
  }
}
