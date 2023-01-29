class Animal {
  String nome;
  String apelido;
  DateTime nascimento;
  double peso;

  Animal(this.nome, this.apelido, this.nascimento, this.peso);

  int calcularIdade() {
    const int quantidadeDiasUmAno = 365;
    return (DateTime.now().difference(nascimento).inDays / quantidadeDiasUmAno)
        .round();
  }
}
