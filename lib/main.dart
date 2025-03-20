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

List<testeClass> listaTeste = [
    testeClass('Var 1'),
    testeClass('Var 2'),
    testeClass('Var 3'),
    testeClass('Var 4'),
  ];

class TelaInicial extends State<MainApp> {
  @override
  int muda = 0; 

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 20),
                child: Text(listaTeste[muda].nome),
              ),
              ElevatedButton(onPressed: (){
                //fazer if e else para caso atingir o maximo da capacidade ele voltar para 0
                muda++;
              }, child: Text('Mudar documentario'))
            ],
          ),
        ),
      ),
    );
  }
}