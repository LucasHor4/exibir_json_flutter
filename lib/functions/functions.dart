
//aq vai onde criamos a lógica para ver o json e passar ele para uma lista, depois exibir a lista no main.dart

class Documentarios{
  late String titulo;
  late String diretor;
  late double duracao;
  late double lancamento;
  late String subgeneros;
  Documentarios(){
    titulo = '';
    diretor = '';
    duracao = 0;
    lancamento = 0;
    subgeneros = '';

  }
  Documentarios.v(this.subgeneros, this.titulo, this.diretor, this.duracao, this.lancamento);

 Documentarios.fromJson(Map<String, dynamic> json) :
  titulo = json['titulo'] as String,
  diretor = json['diretor'] as String,
  duracao = json['duracao'] as double,
  lancamento = json['ano'] as double,
  subgeneros = json['subgeneros'] as String;

   Map<String, dynamic> toJson() => {
    'titulo' : titulo,
    'diretor' : diretor,
    'duracao' : duracao,
    'ano' : lancamento,
    'subgeneros' : subgeneros,
   };
}
