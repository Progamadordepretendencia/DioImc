import 'dart:convert';
import 'dart:io';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }
  void setPeso(double peso){
    _peso = peso;
  }
  double getPeso(){
    return _peso;
  }
  void setAltura(double altura){
    _altura = altura;
  }

  double getAltura(){
    return _altura;
  }
  void infoPessoa(){
    print("Digite seu nome: ");
    final line1 = stdin.readLineSync(encoding: utf8);
    setNome(line1!);
    print("Digite o seu peso:");
    final line2 = stdin.readLineSync(encoding: utf8);
    try {
     setPeso(double.parse(line2!));
    } catch (e) {
      print("Valor digititado não é um peso válido");
    }
    print("Digite a sua altura");
    final line3 = stdin.readLineSync(encoding: utf8);
    try {
      setAltura(double.parse(line3!));
    } catch (e) {
      print("Valor digitado não é uma altura valida");
    }
  }

  double imc(double peso, double altura){
    final calculo =  peso/(altura*altura);
    if (calculo < 16) {
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você está com Magreza grave.");
    } else if(calculo > 16 && calculo <17){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você está com Magreza moderada");
    } else if(calculo > 17 && calculo<18.5){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta com Magreza Leve.");
    } else if(calculo >28.5 && calculo < 25){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta Saudavel.");
    } else if(calculo >25 && calculo<30){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta com Sobrepeso.");
    } else if(calculo >30 && calculo<35){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta com obesidade Grau I.");
    } else if(calculo >35 && calculo<40){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta com obesidade Grau II(Severa).");
    } else{
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta com obesidade Grau III(morbida).");
    }
  
     return calculo;
  }
  
  String calculoFix(double calculo){
    String calculoString = calculo.toStringAsFixed(2);
    return calculoString;
  }
}