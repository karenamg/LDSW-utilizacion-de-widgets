import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utilizacion de Widgets'),
      ),
      body: Column(
        children: <Widget>[
          const Text(
            'Widget: Texto',
            style: TextStyle(fontSize: 24),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Elemento 1.1'),
              Text('Elemento 1.2'),
              Text('Elemento 1.3'),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Elemento 2.1'),
              Text('Elemento 2.2'),
              Text('Elemento 2.3'),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.purple[100],
              ),
              const Positioned(
                top: 20,
                left: 20,
                child: Text('Texto encima del contenedor'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
