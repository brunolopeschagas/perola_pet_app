import 'package:flutter_test/flutter_test.dart';
import 'package:perola_pet_app/animal/animal.dart';

void main() {
  test("verifica se a idade do pet é > 7 anos", () {
    const int anoEmDias = 356 * 8;
    final Animal animal = Animal('PÉROLA', 'TCHUCÃO',
        DateTime.now().subtract(const Duration(days: anoEmDias)));

    int idade = animal.calcularIdade();
    expect(7, lessThan(idade));
  });

  test("verifica se a idade do pet é 7 anos", () {
    const int anoEmDias = 356 * 7;
    final Animal animal = Animal('PÉROLA', 'TCHUCÃO',
        DateTime.now().subtract(const Duration(days: anoEmDias)));

    int idade = animal.calcularIdade();
    expect(7, idade);
  });

  test("verifica se a idade do pet é < 7 anos", () {
    const int anoEmDias = 356 * 6;
    final Animal animal = Animal('PÉROLA', 'TCHUCÃO',
        DateTime.now().subtract(const Duration(days: anoEmDias)));

    int idade = animal.calcularIdade();
    expect(7, greaterThan(idade));
  });
}
