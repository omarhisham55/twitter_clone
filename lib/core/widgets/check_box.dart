import 'package:flutter/material.dart';

import '../utils/x_colors.dart';

class XCheckBox extends StatefulWidget {
  const XCheckBox({super.key});

  @override
  State<XCheckBox> createState() => _XCheckBoxState();
}

class _XCheckBoxState extends State<XCheckBox> {
  bool checkValue = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkValue,
      autofocus: true,
      onChanged: (value) => setState(() => checkValue = value!),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      side: const BorderSide(width: 1, color: XColors.whiteColor),
      visualDensity: VisualDensity.comfortable,
    );
  }
}