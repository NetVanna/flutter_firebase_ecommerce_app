import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CardMenuIcon extends StatelessWidget {
  const CardMenuIcon({
    super.key, required this.onPressed, required this.iconColor,
  });
  final VoidCallback onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag,color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text("2",style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
      ],
    );
  }
}