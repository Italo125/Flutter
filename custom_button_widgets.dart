import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double heigth;
  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.heigth = 42,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: heigth,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black45.withOpacity(0.1),
                    spreadRadius: 0.0,
                    blurRadius: 0.0,
                    offset: Offset(7.0, 8.0)),
                BoxShadow(
                    color: Colors.white38.withOpacity(0.0),
                    blurRadius: 1.0,
                    offset: Offset(-7.0, -8.0)),
              ]),
          child: ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: GoogleFonts.neuton(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ));
  }
}
