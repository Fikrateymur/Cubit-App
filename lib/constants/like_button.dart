import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({
    super.key,
    required this.likeImage,
    required this.color,
    required this.onTap,
  });

  final ImageProvider likeImage;
  final Color color;
  final Function()? onTap;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
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
                Radius.circular(18.38),
              ),
            ),
            child: Image(
              image: widget.likeImage,
              // width: 20,
              // height: 15,
            ),
          ),
        ),
      ),
    );
  }
}
