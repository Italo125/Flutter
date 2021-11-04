import 'package:flutter/material.dart';

class BoxForm extends StatelessWidget {
  final Widget child;
  final String? alertText;

  const BoxForm({
    Key? key,
    required this.child,
    this.alertText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5, left: 10, right: 12, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0.0,
            blurRadius: 4.0,
            offset: Offset(4.0, 4.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child,
          alertText != null
              ? Row(
                  children: [
                    Expanded(child: SizedBox.shrink()),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        alertText!,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(height: 10),
        ],
      ),
    );
  }
}
