import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_page/calculator_controller.dart';
import 'package:flutter_calculator/settings.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

final textStyle1 = TextStyle(color: Colors.white, fontSize: 34);
final textStyle2 = TextStyle(color: Colors.white, fontSize: 24);

class CalculatorView extends StatelessWidget {
  final controller = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(
      () => Container(
        width: double.infinity,
        height: size.height / 2.7,
        color: black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: Container()),
            _Item(
              text: controller.entryTwo.value,
            ),
            _Item(
              text: controller.operation.value,
            ),
            _Item(
              text: controller.entryOne.value,
            ),
            Divider(color: green),
            _Item(result: true, text: controller.result.value),
            SizedBox(height: 8)
          ],
        ),
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
