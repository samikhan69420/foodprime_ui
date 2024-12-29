import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MSHCheckbox(
        size: 60,
        value: isChecked,
        colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
          checkedColor: Colors.blue,
        ),
        style: MSHCheckboxStyle.stroke,
        onChanged: (selected) {
          setState(() {
            isChecked = selected;
          });
        },
      ),
    );
  }
}
