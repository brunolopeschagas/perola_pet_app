import 'package:flutter_test/flutter_test.dart';
import 'package:perola_pet_app/prontuario/cartao.dart';
import 'package:perola_pet_app/medicina/aplicavel.dart';
import 'package:perola_pet_app/medicina/vacina.dart';

void main() {
  test('deve retornar se existe uma vacina aplicada no cartão', () {
    final Cartao carta = Cartao();
    final Aplicavel vacinaRaiva = Vacina(
        'anti-rábica', 'cura da raiva', 'GIGOMPERRY', DateTime.now(), 30);

    carta.registrarAplicacao(vacinaRaiva);

    expect(carta.medicamentos.length, 1);
  });

  test('deve retornar se existe uma vacina aplicada no cartão', () {
    final Cartao carta = Cartao();
    final Aplicavel vacinaRaiva = Vacina(
        'anti-rábica', 'cura da raiva', 'GIGOMPERRY', DateTime.now(), 30);

    carta.registrarAplicacao(vacinaRaiva);

    expect(carta.medicamentos.length, 1);
  });

  test('deve retornar 2 aplicaveis proximos ao vencimento', () {
    final Cartao carta = Cartao();

    final Aplicavel vacinaRaiva = Vacina(
        'anti-rábica', 'cura da raiva', 'GIGOMPERRY', DateTime.now(), 30);
    carta.registrarAplicacao(vacinaRaiva);

    Aplicavel vacinaGiargia = Vacina(
        'Giargia', "Vacina contra Giargia", 'Giardinux', DateTime.now(), 31);
    carta.registrarAplicacao(vacinaGiargia);

    Aplicavel vacinaGripe =
        Vacina('Gripe', "Vacina contra gripe", 'Gripaldox', DateTime.now(), 20);
    carta.registrarAplicacao(vacinaGripe);

    expect(carta.aplicaveisAVencer(30).length, 2);
  });
}
