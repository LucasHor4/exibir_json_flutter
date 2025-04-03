import 'package:flutter/material.dart';
import 'package:exibir_json_flutter/functions/functions.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:convert';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => TelaInicial();
}


class TelaInicial extends State<MainApp> {
  int muda = 0;
  int total = 0; 
  List<dynamic> docList = [];

  @override
   initState()  {
    super.initState();
       readJson();
    }

  Future<void> readJson() async {
    final String jsonString = await rootBundle.loadString('assets/documentarios.json');
   // final List<dynamic> jsonResponse = json.decode(jsonString);
     Iterable data = await json.decode(jsonString);
    docList =  List<dynamic>.from(data.map((model)=> Documentarios.fromJson(model)));
    total = docList.length;
    setState(() {
      docList;
      total;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  docList.isEmpty ?
    const Center(child: CircularProgressIndicator()) 
    : MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 3, bottom: 3),
                child: Text(docList[muda].titulo),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, bottom: 3),
                child: Text((docList[muda].lancamento).toString()),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, bottom: 3),
                child: Text(docList[muda].diretor),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, bottom: 3),
                child: Text((docList[muda].duracao).toString()),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, bottom: 3),
                child: Text(docList[muda].subgeneros),
              ),
              
              ElevatedButton(onPressed: (){
                //fazer if e else para caso atingir o maximo da capacidade ele voltar para 0
                if(muda ==  (total - 1)){
                  setState(() {
                    muda = 0;
                  });
                }else{
                  setState(() {
                    muda = muda + 1;
                  });
                }
              }, child: Text('Mudar documentario'))
            ],
          ),
        ),
      ),
    );
  }
}