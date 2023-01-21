import 'package:flutter_test/flutter_test.dart';
import 'package:perola_pet_app/medicina/vacina.dart';

void main() {
  test("verifica se a proxima aplicacao é antes de 30 dias", () {
    Vacina raiva =
        Vacina("Raiva", "Vacina contra raiva", DateTime.utc(2023, 01, 22), 365);

    int diasEntreAplicacaoEVencimento =
        DateTime.utc(2023, 02, 21).difference(raiva.dataAplicacao).inDays;

    expect(
        raiva.diasProximaAplicacao(), lessThan(diasEntreAplicacaoEVencimento));
  });

  test("verifica se a proxima aplicacao é depois de 30 dias", () {
    Vacina raiva =
        Vacina("Raiva", "Vacina contra raiva", DateTime.utc(2023, 01, 22), 365);

    int diasEntreAplicacaoEVencimento =
        DateTime.utc(2023, 02, 21).difference(raiva.dataAplicacao).inDays;

    expect(raiva.diasProximaAplicacao(),
        greaterThan(diasEntreAplicacaoEVencimento));
  });

  test("verifica se a proxima aplicacao é na data", () {
    Vacina raiva =
        Vacina("Raiva", "Vacina contra raiva", DateTime.utc(2023, 01, 22), 365);

    int diasEntreAplicacaoEVencimento =
        DateTime.utc(2023, 02, 21).difference(raiva.dataAplicacao).inDays;

    expect(raiva.diasProximaAplicacao(),
        greaterThan(diasEntreAplicacaoEVencimento));
  });
}
