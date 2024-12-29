import 'package:flutter/material.dart';

class MyFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  const MyFormField({
    super.key,
    required this.hintText,
    this.controller,
  });

  @override
  State<MyFormField> createState() => _MyFormFieldState();
}

class _MyFormFieldState extends State<MyFormField> {
  late FocusNode focusNode;
  late bool hasFocus = false;
  @override
  void initState() {
    focusNode = FocusNode();
    hasFocus = false;
    super.initState();
    focusNode.addListener(
      () {
        setState(() {
          hasFocus = !hasFocus;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey[600],
      controller: widget.controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey[600],
        ),
        label: Text(
          widget.hintText,
          style: TextStyle(
            color: hasFocus ? Colors.red : Colors.grey,
            fontWeight: hasFocus ? FontWeight.w600 : null,
          ),
        ),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2)),
      ),
    );
  }
}
