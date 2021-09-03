class Cidade {
  int id;
  String nome;

  Cidade({this.nome});

  Cidade.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.nome = map['nome'];
  }

  @override
  String toString() {
    return "$id - $nome";
  }
}