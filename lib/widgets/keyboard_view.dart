import 'package:flutter/material.dart';
import 'package:flutter_calculator/settings.dart';

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

class _Row3 extends StatelessWidget {
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

class _Row4 extends StatelessWidget {
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

class _Row5 extends StatelessWidget {
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

class _RowItem extends StatelessWidget {
  final String text;
  final Color color;

  const _RowItem({Key? key, required this.text, this.color = grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
