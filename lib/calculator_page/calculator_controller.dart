import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class CalculatorController extends GetxController {
  //Observables
  var entryOne = "1000".obs;
  var operation = "+".obs;
  var entryTwo = "1000".obs;
  var result = "2000".obs;

  void core({String value = ""}) {
    del(operation: value);
    setEntryOne(textNumber: value);
  }

  void del({String operation = ""}) {
    if (!operation.contains("DEL")) {
      return;
    }
    this.entryOne.value = "";
    this.operation.value = "";
    this.entryTwo.value = "";
    this.result.value = "0";
  }

  void setEntryOne({String textNumber = ""}) {
    if (textNumber.contains("A/C") ||
        textNumber.contains("+/-") ||
        textNumber.contains("DEL") ||
        textNumber.contains("/") ||
        textNumber.contains("x") ||
        textNumber.contains("-") ||
        textNumber.contains("+") ||
        textNumber.contains("=") ||
        textNumber.contains("x") ||
        textNumber.contains("A/C")) {
      return;
    }
    entryOne.value += textNumber;
  }
}
