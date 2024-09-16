import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    this.onTap,
    this.icon=Iconsax.arrow_right_34,
    required this.title,
    required this.value,
  });

  final void Function()? onTap;
  final IconData icon;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(flex: 3, child: Text(title)),
          Expanded(
            flex: 5,
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Icon(
              icon,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
