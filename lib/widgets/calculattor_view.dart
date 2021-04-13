import 'package:flutter/material.dart';
import 'package:flutter_calculator/settings.dart';

final textStyle1 = TextStyle(color: Colors.white, fontSize: 30);
final textStyle2 = TextStyle(color: Colors.white, fontSize: 20);

class CalculatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height / 2.7,
      color: black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: Container()),
          _Item(
            text: "1000",
          ),
          _Item(
            text: "x",
          ),
          _Item(
            text: "1000",
          ),
          Divider(color: green),
          _Item(
            result: true,
            text: "2000",
          ),
          SizedBox(height: 8)
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final bool result;
  final String text;

  const _Item({Key? key, this.result = false, this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12, top: 8),
      child: Text(text, style: result ? textStyle1 : textStyle2),
    );
  }
}
