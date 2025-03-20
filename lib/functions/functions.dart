import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

//aq vai onde criamos a lógica para ver o json e passar ele para uma lista, depois exibir a lista no main.dart

class Documentarios{
  late String docmnID;
  late String titulo;
  late String diretor;
  late Double duracao;
  late String lancamento;

  Documentarios(this.docmnID, this.titulo, this.diretor, this.duracao, this.lancamento);

 Documentarios.fromJson(Map<String, dynamic> json) :
  docmnID = json[/* nome do id no arqv json, o mesmo se repete com os outros*/ 0];
}


class testeClass{
  late String nome;

  testeClass( this.nome);

}
