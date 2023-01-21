abstract class Aplicavel {
  String nome;
  String descricao;
  DateTime dataAplicacao;
  int validadeEmDias;

  Aplicavel(this.nome, this.descricao, this.dataAplicacao, this.validadeEmDias);

  DateTime vencimento() {
    return dataAplicacao.add(Duration(days: validadeEmDias));
  }

  int diasProximaAplicacao() {
    int diasFaltantes = DateTime.now().difference(dataAplicacao).inDays;
    return diasFaltantes;
  }
}
