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
  String _operation = "";
  bool _start = false;

  void core(String value) {
    _init();
    printPrimaryText(value);
    _actions(value);
  }

  void _init() {
    if (this._start) {
      clear();
      this._start = false;
    }
  }

  _actions(String value) {
    del(del: value);
    same(same: value);
  }

  printPrimaryText(String value) {
    if (_isAction(value)) return;
    if (_isOperation(value) && _containsOperation()) return;
    if (value.contains(SAME)) return;
    this.primaryText.value += value;
    _saveOperation(value);
  }

  _saveOperation(String value) {
    if (_isOperation(value)) {
      this._operation = value;
    }
  }

  bool _containsOperation() {
    return (this.primaryText.value.contains(DIVISION) ||
        this.primaryText.value.contains(MULTIPLICATION) ||
        this.primaryText.value.contains(SUBTRACTION) ||
        this.primaryText.value.contains(SUM));
  }

  // bool _isNumber(String value) {
  //   return (value.contains(ZERO) ||
  //       value.contains(ONE) ||
  //       value.contains(TWO) ||
  //       value.contains(THREE) ||
  //       value.contains(FOUR) ||
  //       value.contains(FIVE) ||
  //       value.contains(SIX) ||
  //       value.contains(SEVEN) ||
  //       value.contains(EIGHT) ||
  //       value.contains(NINE));
  // }

  bool _isOperation(String value) {
    return (value.contains(DIVISION) ||
        value.contains(MULTIPLICATION) ||
        value.contains(SUBTRACTION) ||
        value.contains(SUM));
  }

  bool _isAction(String value) {
    return (value.contains(A_C) ||
        value.contains(MORE_LESS) ||
        value.contains(DEL) ||
        value.contains(POINT));
  }

  void same({String same = ""}) {
    if (same.contains(SAME)) {
      List<String> numbers = this.primaryText.value.split(this._operation);
      int numberOne = int.parse(numbers.first);
      int numberTwo = int.parse(numbers.last);
      calculate(numberOne, numberTwo);
    }
  }

  void del({String del = ""}) {
    if (del.contains(DEL)) {
      clear();
    }
  }

  void clear() {
    this.primaryText.value = "";
    this.secondaryText.value = "";
    this._operation = "";
  }

  void calculate(int numberOne, int numberTwo) {
    if (this._operation.contains(DIVISION)) {
      this.secondaryText.value = "${numberOne / numberTwo}";
    }
    if (this._operation.contains(MULTIPLICATION)) {
      this.secondaryText.value = "${numberOne * numberTwo}";
    }
    if (this._operation.contains(SUBTRACTION)) {
      this.secondaryText.value = "${numberOne - numberTwo}";
    }
    if (this._operation.contains(SUM)) {
      this.secondaryText.value = "${numberOne + numberTwo}";
    }
    this._start = true;
  }
}
