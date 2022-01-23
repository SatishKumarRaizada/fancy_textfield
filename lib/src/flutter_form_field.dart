import 'package:flutter/material.dart';

class FlutterInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Function onChange;
  final Function onDone;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Color borderColor;
  final TextEditingController? textFieldController;
  final Function? suffixTap;
  final Function? validateTextField;
  final Color? filledColor;
  final bool isSecure;
  final int lineHeight;
  final double labelFontSize;
  final double hintFontSize;

  const FlutterInputField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.onChange,
    required this.onDone,
    this.prefixWidget,
    this.suffixWidget,
    this.borderColor = Colors.blue,
    this.textFieldController,
    this.suffixTap,
    this.validateTextField,
    this.filledColor = Colors.lightBlue,
    this.isSecure = false,
    this.lineHeight = 1,
    this.labelFontSize = 16,
    this.hintFontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        const SizedBox(height: 10),
        TextFormField(
          controller: textFieldController,
          obscureText: isSecure,
          maxLines: lineHeight,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            errorStyle: const TextStyle(
              fontSize: 16,
            ),
            filled: true,
            fillColor: filledColor,
            hintText: hintText,
            prefixIcon: prefixWidget,
            suffixIcon: suffixWidget,
            labelStyle: TextStyle(
              fontSize: labelFontSize,
            ),
            hintStyle: TextStyle(
              fontSize: hintFontSize,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                width: 0.5,
                style: BorderStyle.solid,
                color: borderColor,
              ),
            ),
          ),
          onChanged: (String str) {
            onChange(str);
          },
          validator: (String? value) {
            return validateTextField!(value);
          },
          onEditingComplete: () {
            onDone();
          },
        ),
      ],
    );
  }
}
