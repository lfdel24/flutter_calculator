import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_calculator/widgets/calculattor_view.dart';
import 'package:flutter_calculator/widgets/keyboard_view.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 480),
          child: Column(
            children: [
              CalculatorView(),
              KeyboardView(),
            ],
          ),
        ),
      ),
    );
  }
}
