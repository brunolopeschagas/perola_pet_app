import 'package:flutter_test/flutter_test.dart';
import 'package:perola_pet_app/animal/animal.dart';
import 'package:perola_pet_app/cartao_vacinacao/cartao.dart';
import 'package:perola_pet_app/medicina/aplicavel.dart';
import 'package:perola_pet_app/medicina/vacina.dart';

void main() {
  test('deve retornar se existe uma vacina aplicada no cartão', () {
    final Animal animal =
        Animal('PÉROLA', 'TCHUCÃO', DateTime.utc(2013, 11, 13));
    final CartaoVacinacao cartaVacinacao = CartaoVacinacao(animal);
    final Aplicavel vacinaRaiva =
        Vacina('anti-rábica', 'cura da raiva', DateTime.now(), 30);

    cartaVacinacao.registrarAplicacao(vacinaRaiva);

    expect(cartaVacinacao.vacinasRemedios.length, 1);
  });
}
