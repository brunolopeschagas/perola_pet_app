class Animal {
  String nome;
  String apelido;
  DateTime nascimento;

  Animal(this.nome, this.apelido, this.nascimento);

  int calcularIdade() {
    const int quantidadeDiasUmAno = 365;
    return (DateTime.now().difference(nascimento).inDays / quantidadeDiasUmAno)
        .round();
  }
}
