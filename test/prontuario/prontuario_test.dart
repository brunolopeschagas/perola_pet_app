import 'package:flutter_test/flutter_test.dart';
import 'package:perola_pet_app/animal/animal.dart';
import 'package:perola_pet_app/prontuario/cartao.dart';
import 'package:perola_pet_app/prontuario/prontuario.dart';
import 'package:perola_pet_app/prontuario/status_saude.dart';

void main() {
  Animal perola = Animal('Pérola', "Thucão", DateTime.utc(2013, 11, 13), 7.6);
  Cartao cartao = Cartao();

  test('Deve adicionar 3 itens ao historico de peso do animal', () {
    Prontuario prontuarioPerola = Prontuario(perola, cartao);

    StatusSaude registroNascimento = StatusSaude(
        DateTime.utc(2013, 11, 13), 5, 'Após o tratamento do veneno');
    StatusSaude registroMeio =
        StatusSaude(DateTime.utc(2017, 11, 13), 8, 'Saude ok');
    StatusSaude registroAtual =
        StatusSaude(DateTime.utc(2023, 11, 13), 7.7, 'Coração');

    prontuarioPerola.adicionarRegistroSaude(registroNascimento);
    prontuarioPerola.adicionarRegistroSaude(registroMeio);
    prontuarioPerola.adicionarRegistroSaude(registroAtual);

    expect(prontuarioPerola.historicoSaude.length, equals(3));
  });
}
