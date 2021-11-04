import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;

  final Icon? icon;
  final bool obscureText;
  const CustomText({
    Key? key,
    required this.text,
    this.onPressed,
    this.icon,
    this.onTap,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: TextFormField(
            onTap: onTap,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0.5),
              isDense: true,
              icon: icon,
              hintStyle: GoogleFonts.ovo(),
              hintText: text,
              border: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.text));
  }
}
