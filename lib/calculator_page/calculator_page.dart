import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_calculator/widgets/calculattor_view.dart';
import 'package:flutter_calculator/widgets/keyboard_view.dart';
import 'package:get/get.dart';

import 'calculator_controller.dart';

class CalculatorPage extends StatelessWidget {
  final controller = Get.put(CalculatorController());

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
