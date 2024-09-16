import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../icon/circular_icon.dart';

class AddProductToCard extends StatelessWidget {
  const AddProductToCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
      decoration: const BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                backgroundColor: Colors.grey,
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "2",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: 15,
              ),
              CircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                backgroundColor: Colors.black,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white
            ),
            child: const Text("Add Card"),
          ),
        ],
      ),
    );
  }
}
