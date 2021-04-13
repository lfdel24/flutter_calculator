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
            _Row(),
            _Row(),
            _Row(),
            _Row(),
            _Row(),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _RowItem(),
        _RowItem(),
        _RowItem(),
        _RowItem(),
      ],
    );
  }
}

class _RowItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          width: 60,
          height: 60,
          decoration: new BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Text('0', style: textStyle2),
        ),
      ),
    );
  }
}
