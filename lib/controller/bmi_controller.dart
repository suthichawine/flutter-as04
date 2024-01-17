import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  RxInt weight = 50.obs;
  RxInt height = 50.obs;
  RxDouble bmi = 0.0.obs;

  final weightTextField = TextEditingController();
  final heightTextField = TextEditingController();

  void incrmentWeight() {
    weight++;
    weightTextField.text = weight.value.toString();
  }

  void decrementWeight() {
    weight--;
    weightTextField.text = weight.value.toString();
  }

  void incrmentHeight() {
    height++;
    heightTextField.text = height.value.toString();
  }

  void decrementHeight() {
    height--;
    heightTextField.text = height.value.toString();
  }

  void bmiCalculate() {
    bmi.value = weight / ((height / 100) * (height / 100));
  }
}
