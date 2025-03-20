import 'package:flutter/material.dart';
import 'package:exibir_json_flutter/functions/functions.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => TelaInicial();
}

class TelaInicial extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 20),
                child: Text('variavel 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}