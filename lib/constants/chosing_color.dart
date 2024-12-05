import 'package:flutter/material.dart';

class ChosingColor extends StatefulWidget {
  const ChosingColor({
    super.key,
    required this.color,
    required this.widget,
    required this.onTap,
  });

  final Color color;
  final Icon widget;
  final GestureTapCallback onTap;

  @override
  State<ChosingColor> createState() => _ChosingColorState();
}

class _ChosingColorState extends State<ChosingColor> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.color,
        ),
        child: widget.widget,
      ),
    );
  }
}
