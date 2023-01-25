abstract class Aplicavel {
  String nome;
  String marca;
  String descricao;
  DateTime dataAplicacao;
  late DateTime dataVencimento;

  Aplicavel(this.nome, this.descricao, this.marca, this.dataAplicacao,
      int validadeEmDias) {
    dataVencimento = dataAplicacao.add(Duration(days: validadeEmDias));
  }

  int diasProximaAplicacao() {
    return dataVencimento.difference(DateTime.now()).inDays;
  }
}
