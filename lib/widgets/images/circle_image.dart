import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworkImage=false,
    this.overlayColor,
    this.backgroundColor,
    this.width=56,
    this.height=56,
    this.padding=14,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage ? NetworkImage(image):AssetImage(image) as ImageProvider,
        fit: fit,
        color: overlayColor,
      ),
    );
  }
}
