import 'package:imc/classes/Pessoa.dart' as app;
import 'package:test/test.dart';

void main() {
   group("Calcular o imc", () {
    final valuesToTest = {
      {'peso': 70, 'altura': 1.50 }:31.0,
      {'peso': 70, 'altura': 1.60 }:27.0,
      {'peso': 70, 'altura': 1.70 }:24.0,
      {'peso': 70, 'altura': 1.80 }:21.0,
      {'peso': 70, 'altura': 1.90 }:19.0,
      {'peso': 70, 'altura': 2.00 }:17.0,
      
    };

    valuesToTest.forEach((values, expected) { 
      test("$values: $expected", (){
      expect(app.Pessoa().imc(
        double.parse(values["peso"].toString()), 
        double.parse(values["altura"].toString())), 
        greaterThan(expected));
      });
    });
  });
}
