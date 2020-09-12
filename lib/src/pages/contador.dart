import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle estilo = TextStyle(fontSize: 25.0);
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Contador'),
              centerTitle: true,
              backgroundColor: Colors.purple,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Clicks', style: estilo),
                  Text('Click numero: $_contador', style: estilo)
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  _contador++;
                  print('presionando boton $_contador');

                  setState(() {});
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.red)));
  }
}
