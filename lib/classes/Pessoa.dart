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
    if (calculo < 19) {
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você está abaixo do peso. Talvez deva melhorar a alimentação");
    } else if(calculo > 19 && calculo <23.9){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você está normal. Bom trabalho");
    } else if(calculo > 24 && calculo<28.9){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta com obesidade leve. Seria uma boa ideia comer menos gorduras e fazer caminhadas");
    } else if(calculo >29 && calculo < 38.9){
      print("${getNome()} seu Imc é ${calculoFix(calculo)} e você esta com obesidade moderada. Que tal começar uma alimentação regrada e fazer exercícios");
    }else{
      print("${getNome()} você esta com obesidade morbida. Infelizmente nestes estágio é recomendado que busque assistência de algum profissional especializado");
    }
  
     return calculo;
  }
  
  String calculoFix(double calculo){
    String calculoString = calculo.toStringAsFixed(2);
    return calculoString;
  }
}