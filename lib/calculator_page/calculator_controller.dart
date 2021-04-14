import 'package:get/state_manager.dart';
import 'package:flutter_calculator/settings.dart';

//TODO: Cuando se pone el primer valor y leugo el signo y luego el signo se produce un error
//TODO: Mirar con que valores en pantalla comienza una calculadora
//TODO: El metodo del() debe estar dentro del metodo de otras operaciones
//TODO: La casilla del 0 debe tomar el ancho de dos filas
//TODO: la fila de otras operaciones deberia estar en otro color menos el signo de division

class CalculatorController extends GetxController {
  //Observables
  var entryOne = "".obs;
  var operation = "".obs;
  var entryTwo = "".obs;
  var result = "".obs;

  void core({String value = ""}) {
    reset();
    del(del: value);
    setEntryOne(textNumber: value);
    setOperation(operation: value);
  }

  void reset() {
    if (this.result.value.isNotEmpty) {
      this.entryOne.value = "";
      this.operation.value = "";
      this.entryTwo.value = "";
      this.result.value = "";
    }
  }

  void del({String del = ""}) {
    if (del.contains(DEL)) {
      this.entryOne.value = "";
      this.operation.value = "";
      this.entryTwo.value = "";
      this.result.value = "";
    }
  }

  void setEntryOne({String textNumber = ""}) {
    if (textNumber.contains(A_C) ||
        textNumber.contains(MORE_LESS) ||
        textNumber.contains(DEL) ||
        textNumber.contains(DIVISION) ||
        textNumber.contains(MULTIPLICATION) ||
        textNumber.contains(SUBTRACTION) ||
        textNumber.contains(SUM) ||
        textNumber.contains(SAME)) {
      return;
    }
    entryOne.value += textNumber;
  }

  void setOperation({String operation = ""}) {
    if (operation.contains(DIVISION) ||
        operation.contains(MULTIPLICATION) ||
        operation.contains(SUBTRACTION) ||
        operation.contains(SUM)) {
      this.operation.value = operation;
      this.entryTwo.value = this.entryOne.value;
      this.entryOne.value = "";
    }
    if (operation.contains(SAME)) {
      calculate();
    }
  }

  void calculate() {
    int n1 = int.parse(this.entryTwo.value);
    int n2 = int.parse(this.entryOne.value);
    if (this.operation.value.contains(DIVISION)) {
      this.result.value = "${n1 / n2}";
    }
    if (this.operation.value.contains(MULTIPLICATION)) {
      this.result.value = "${n1 * n2}";
    }
    if (this.operation.value.contains(SUBTRACTION)) {
      this.result.value = "${n1 - n2}";
    }
    if (this.operation.value.contains(SUM)) {
      this.result.value = "${n1 + n2}";
    }
  }
}
