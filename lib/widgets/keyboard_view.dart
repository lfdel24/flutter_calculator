import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_page/calculator_controller.dart';
import 'package:flutter_calculator/settings.dart';
import 'package:get/get.dart';

final textStyle2 = TextStyle(color: Colors.white, fontSize: 24);

class KeyboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: black,
        child: Column(
          children: [
            Expanded(child: Container()),
            _Row1(),
            _Row2(),
            _Row3(),
            _Row4(),
            _Row5(),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}

class _Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _RowItem(
          text: "A/C",
        ),
        _RowItem(
          text: "+/-",
        ),
        _RowItem(
          text: "DEL",
        ),
        _RowItem(
          text: "/",
          color: green,
        ),
      ],
    );
  }
}

class _Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _RowItem(
          text: "7",
        ),
        _RowItem(
          text: "8",
        ),
        _RowItem(
          text: "9",
        ),
        _RowItem(
          text: "x",
          color: green,
        ),
      ],
    );
  }
}

class _Row3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _RowItem(
          text: "4",
        ),
        _RowItem(
          text: "5",
        ),
        _RowItem(
          text: "6",
        ),
        _RowItem(
          text: "-",
          color: green,
        ),
      ],
    );
  }
}

class _Row4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _RowItem(
          text: "1",
        ),
        _RowItem(
          text: "2",
        ),
        _RowItem(
          text: "3",
        ),
        _RowItem(
          text: "+",
          color: green,
        ),
      ],
    );
  }
}

class _Row5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _CustomRowItem(
          text: "0",
        ),
        _RowItem(
          text: ".",
        ),
        _RowItem(
          text: "=",
          color: green,
        ),
      ],
    );
  }
}

class _CustomRowItem extends StatelessWidget {
  final String text;
  final Color color;

  const _CustomRowItem({Key? key, required this.text, this.color = grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: InkWell(
        onTap: () {
          final controller = Get.find<CalculatorController>();
          controller.core(text);
        },
        child: Container(
          alignment: Alignment.center,
          //padding: EdgeInsets.all(40),
          margin: EdgeInsets.only(left: 31, right: 31, top: 8),
          width: 60,
          height: 60,
          decoration: new BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(33)),
          child: Text(text, style: textStyle2),
        ),
      ),
    );
  }
}

class _RowItem extends StatelessWidget {
  final String text;
  final Color color;

  const _RowItem({
    Key? key,
    required this.text,
    this.color = grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          final controller = Get.find<CalculatorController>();
          controller.core(text);
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 8),
          width: 60,
          height: 60,
          decoration: new BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Text(text, style: textStyle2),
        ),
      ),
    );
  }
}
