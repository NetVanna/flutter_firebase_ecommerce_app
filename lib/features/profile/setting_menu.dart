import 'package:flutter/material.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.trailing, this.onTap});

  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Colors.blue,
      ),
      title: Text(title,style: const TextStyle(fontWeight: FontWeight.w800),),
      subtitle: Text(subTitle),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
