import 'package:flutter/material.dart';

class ChosingButton extends StatefulWidget {
  const ChosingButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
  });

  final Widget text;
  final GestureTapCallback onTap;
  final Color color;

  @override
  State<ChosingButton> createState() => _ChosingButtonState();
}

class _ChosingButtonState extends State<ChosingButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 32),
        child: Container(
          alignment: Alignment.topRight,
          child: Container(
            height: 37,
            width: 37,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: const BorderRadius.all(
                Radius.circular(23),
              ),
            ),
            child: Center(
              child: widget.text,
            ),
          ),
        ),
      ),
    );
  }
}
