import 'package:perola_pet_app/medicina/aplicavel.dart';

class Cartao {
  List<Aplicavel> _medicamentos = <Aplicavel>[];

  Cartao();

  Cartao.completo(this._medicamentos);

  void registrarAplicacao(Aplicavel aplicavel) {
    _medicamentos.add(aplicavel);
  }

  List<Aplicavel> aplicaveisAVencer(int diasParaVencimento) {
    List<Aplicavel> aplicaveisAVencer = <Aplicavel>[];
    for (var aplicavel in _medicamentos) {
      int diasAVencer = aplicavel.diasProximaAplicacao();
      if (diasAVencer < diasParaVencimento) {
        aplicaveisAVencer.add(aplicavel);
      }
    }
    return aplicaveisAVencer;
  }

  List<Aplicavel> get medicamentos => _medicamentos;
}
