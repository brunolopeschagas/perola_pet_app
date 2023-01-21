import 'package:flutter_test/flutter_test.dart';
import 'package:perola_pet_app/animal/animal.dart';

void main() {
  test("verifica se a idade do pet é > 7 anos", () {
    final Animal animal =
        Animal('PÉROLA', 'TCHUCÃO', DateTime.utc(2013, 11, 13));

    int idade = animal.calcularIdade();
    expect(7, lessThan(idade));
  });

  test("verifica se a idade do pet é < 7 anos", () {
    final Animal animal = Animal('PÉROLA', 'TCHUCÃO', DateTime.now());

    int idade = animal.calcularIdade();
    expect(7, greaterThan(idade));
  });
}
