import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../widgets/images/circle_image.dart';

class UserProfileListTile extends StatelessWidget {
  const UserProfileListTile({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleImage(
        image: 'assets/images/product/profile_pic.png',
        width: 70,
        height: 70,
        padding: 0,
        fit: BoxFit.cover,
      ),
      title: const Text("Learning By Myself"),
      subtitle: const Text("support@myself.com"),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.edit,
          color: Colors.black,
        ),
      ),
      onTap: onTap,
    );
  }
}
