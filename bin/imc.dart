import 'package:imc/classes/Pessoa.dart';

void main(List<String> arguments) {
  Pessoa lucas = Pessoa();
  lucas.infoPessoa();
  lucas.imc(lucas.getPeso(), lucas.getAltura());
}
