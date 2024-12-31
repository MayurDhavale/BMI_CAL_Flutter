import 'dart:math';

import 'dart:core';
class CalculatorBrain{

  final int height;
  final int weight;

  CalculatorBrain({required this.height,required this.weight});

  double _bmi=0.0;

  String calculateBMI(){
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return 'overweighted';
    }else if(_bmi>18){
      return 'normal';
    }else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'You have higher than normal body weight.try to exercise more.';
    }else if(_bmi>18){
      return 'You have normal body weight. Good job!';
    }else{
      return 'You have lower than normal body weight you can eat bit more.';
    }
  }
}