import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_page/calculator_controller.dart';
import 'package:flutter_calculator/settings.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

final textStylePrimary = TextStyle(color: Colors.white, fontSize: 40);
final textStyleSecondary = TextStyle(color: Colors.white, fontSize: 20);

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
            SizedBox(height: 8),
            Expanded(child: Container()),
            _Item(
              text: controller.secondaryText.value,
              textStyle: textStyleSecondary,
            ),
            Divider(color: green),
            _Item(
              text: controller.primaryText.value,
              textStyle: textStylePrimary,
            ),
            SizedBox(height: 8)
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const _Item({Key? key, this.text = "", this.textStyle = const TextStyle()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12, top: 8),
      child: Text(text, style: textStyle),
    );
  }
}
