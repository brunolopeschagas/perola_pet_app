import 'package:perola_pet_app/prontuario/cartao.dart';
import 'package:perola_pet_app/prontuario/status_saude.dart';

import '../animal/animal.dart';

class Prontuario {
  Animal animal;
  Cartao cartao;
  List<StatusSaude> historicoSaude;

  Prontuario(this.animal, this.cartao, this.historicoSaude);
}
