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
    final Aplicavel vacinaRaiva = Vacina(
        'anti-rábica', 'cura da raiva', 'GIGOMPERRY', DateTime.now(), 30);

    cartaVacinacao.registrarAplicacao(vacinaRaiva);

    expect(cartaVacinacao.vacinasRemedios.length, 1);
  });

  test('deve retornar se existe uma vacina aplicada no cartão', () {
    final Animal animal =
        Animal('PÉROLA', 'TCHUCÃO', DateTime.utc(2013, 11, 13));
    final CartaoVacinacao cartaVacinacao = CartaoVacinacao(animal);
    final Aplicavel vacinaRaiva = Vacina(
        'anti-rábica', 'cura da raiva', 'GIGOMPERRY', DateTime.now(), 30);

    cartaVacinacao.registrarAplicacao(vacinaRaiva);

    expect(cartaVacinacao.vacinasRemedios.length, 1);
  });

  test('deve retornar 2 aplicaveis proximos ao vencimento', () {
    final Animal animal =
        Animal('PÉROLA', 'TCHUCÃO', DateTime.utc(2013, 11, 13));
    final CartaoVacinacao cartaVacinacao = CartaoVacinacao(animal);

    final Aplicavel vacinaRaiva = Vacina(
        'anti-rábica', 'cura da raiva', 'GIGOMPERRY', DateTime.now(), 30);
    cartaVacinacao.registrarAplicacao(vacinaRaiva);

    Aplicavel vacinaGiargia = Vacina(
        'Giargia', "Vacina contra Giargia", 'Giardinux', DateTime.now(), 31);
    cartaVacinacao.registrarAplicacao(vacinaGiargia);

    Aplicavel vacinaGripe =
        Vacina('Gripe', "Vacina contra gripe", 'Gripaldox', DateTime.now(), 20);
    cartaVacinacao.registrarAplicacao(vacinaGripe);

    expect(cartaVacinacao.aplicaveisAVencer(30).length, 2);
  });
}
