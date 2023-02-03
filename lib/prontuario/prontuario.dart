import 'package:perola_pet_app/prontuario/cartao.dart';
import 'package:perola_pet_app/prontuario/status_saude.dart';

import '../animal/animal.dart';

class Prontuario {
  Animal animal;
  Cartao cartao;
  late List<StatusSaude> historicoSaude = <StatusSaude>[];

  Prontuario(this.animal, this.cartao);
  Prontuario.historicoSaude(this.animal, this.cartao, this.historicoSaude);

  void adicionarRegistroSaude(StatusSaude statusSaude) {
    historicoSaude.add(statusSaude);
  }
}
