import 'package:get/state_manager.dart';
import 'package:flutter_calculator/settings.dart';

//TODO: Cuando se pone el primer valor y leugo el signo y luego el signo se produce un error
//TODO: Mirar con que valores en pantalla comienza una calculadora
//TODO: El metodo del() debe estar dentro del metodo de otras operaciones
//TODO: La casilla del 0 debe tomar el ancho de dos filas
//TODO: la fila de otras operaciones deberia estar en otro color menos el signo de division

class CalculatorController extends GetxController {
  var primaryText = "".obs;
  var secondaryText = "".obs;

  void core({String value = ""}) {
    print("number: ${_isNumber(value)}");
    print("operation: ${_isOperation(value)}");
    print("action: ${_isAction(value)}");
    del(del: value);
  }

  bool _isNumber(String value) {
    return (value.contains(ZERO) ||
        value.contains(ONE) ||
        value.contains(TWO) ||
        value.contains(THREE) ||
        value.contains(FOUR) ||
        value.contains(FIVE) ||
        value.contains(SIX) ||
        value.contains(SEVEN) ||
        value.contains(EIGHT) ||
        value.contains(NINE));
  }

  bool _isOperation(String value) {
    return (value.contains(DIVISION) ||
        value.contains(MULTIPLICATION) ||
        value.contains(SUBTRACTION) ||
        value.contains(SUM) ||
        value.contains(SAME));
  }

  bool _isAction(String value) {
    return (value.contains(A_C) ||
        value.contains(MORE_LESS) ||
        value.contains(DEL) ||
        value.contains(POINT));
  }

  void clear() {
    this.primaryText.value = "";
    this.secondaryText.value = "";
  }

  void del({String del = ""}) {
    if (del.contains(DEL)) {
      clear();
    }
  }

  void calculate() {
    // int n1 = int.parse(this.entryOne.value);
    // int n2 = int.parse(this.entryTwo.value);
    // if (this.operation.value.contains(DIVISION)) {
    //   this.result.value = "${n1 / n2}";
    // }
    // if (this.operation.value.contains(MULTIPLICATION)) {
    //   this.result.value = "${n1 * n2}";
    // }
    // if (this.operation.value.contains(SUBTRACTION)) {
    //   this.result.value = "${n1 - n2}";
    // }
    // if (this.operation.value.contains(SUM)) {
    //   this.result.value = "${n1 + n2}";
    // }
  }
}
