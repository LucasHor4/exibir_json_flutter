import 'package:flutter/material.dart';
import 'package:exibir_json_flutter/functions/functions.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

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
  int muda = 0; 
  int total = 0; 
  List<Documentarios> docList = List.empty();

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/documentarios.json');
     Iterable data = await json.decode(response);
    docList =  List<Documentarios>.from(data.map((model)=> Documentarios.fromJson(model)));
    total = docList.length;
    setState(() {
      docList;
      total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 20),
                child: Text(docList[muda].titulo),
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