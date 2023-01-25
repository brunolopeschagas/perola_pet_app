import 'package:perola_pet_app/animal/animal.dart';
import 'package:perola_pet_app/medicina/aplicavel.dart';

class CartaoVacinacao {
  Animal _animal;
  List<Aplicavel> _vacinasRemedios = <Aplicavel>[];

  CartaoVacinacao(this._animal);

  CartaoVacinacao.completo(this._animal, this._vacinasRemedios);

  void registrarAplicacao(Aplicavel aplicavel) {
    _vacinasRemedios.add(aplicavel);
  }

  List<Aplicavel> aplicaveisAVencer(int diasParaVencimento) {
    List<Aplicavel> aplicaveisAVencer = <Aplicavel>[];
    for (var aplicavel in _vacinasRemedios) {
      int diasAVencer = aplicavel.diasProximaAplicacao();
      if (diasAVencer < diasParaVencimento) {
        aplicaveisAVencer.add(aplicavel);
      }
    }
    return aplicaveisAVencer;
  }

  Animal get animal => _animal;
  List<Aplicavel> get vacinasRemedios => _vacinasRemedios;

  set animal(Animal animal) {
    _animal = animal;
  }
}
