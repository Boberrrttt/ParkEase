import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/responsive_util.dart';
import 'package:flutter/services.dart';


class CustomInputField extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final Color borderColor;
  final Color labelBgColor;
  final Color labelColor;
  final Color inputTextColor;
  final List<TextInputFormatter>? inputFormatters;

  const CustomInputField(
      {super.key,
      required this.labelText,
      required this.borderColor,
      required this.labelBgColor,
      required this.labelColor,
      required this.inputTextColor,
      this.inputFormatters,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.89,
          height: 53,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: borderColor, width: 3.2)),
          child: TextField(
            style: TextStyle(color: inputTextColor),
            obscureText: isPassword,
            decoration: const InputDecoration(
                border: InputBorder.none, fillColor: Colors.transparent),
            inputFormatters: inputFormatters, 
          ),
        ),
        Positioned(
          top: -12,
          left: 11,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: labelBgColor,
            child: Text(labelText,
                style: TextStyle(color: labelColor, fontSize: 14)),
          ),
        )
      ],
    );
  }
}
