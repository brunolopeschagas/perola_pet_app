import 'package:flutter_test/flutter_test.dart';
import 'package:perola_pet_app/medicina/vacina.dart';

void main() {
  test("verifica se a proxima aplicacao é antes de 30 dias", () {
    Vacina vacinaRaiva = Vacina("Raiva", "Vacina contra raiva", 'GIGOMPERRY',
        DateTime.now().subtract(const Duration(days: 335)), 365);
    int diasProximaAplicacao = vacinaRaiva.diasProximaAplicacao();

    expect(diasProximaAplicacao, lessThan(30));
  });

  test("verifica se a proxima aplicacao é de 30 dias", () {
    Vacina vacinaRaiva = Vacina("Raiva", "Vacina contra raiva", 'GIGOMPERRY',
        DateTime.now().subtract(const Duration(days: 334)), 365);
    int diasProximaAplicacao = vacinaRaiva.diasProximaAplicacao();

    expect(diasProximaAplicacao, equals(30));
  });

  test("verifica se a proxima aplicacao é depois de 30 dias", () {
    Vacina vacinaRaiva = Vacina("Raiva", "Vacina contra raiva", 'GIGOMPERRY',
        DateTime.now().subtract(const Duration(days: 1)), 365);
    int diasProximaAplicacao = vacinaRaiva.diasProximaAplicacao();

    expect(diasProximaAplicacao, greaterThan(30));
  });
}
