import 'package:flutter/material.dart';

import '../container/circular_container.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.isSelected,
    this.onSelected,
    required this.backgroundColor,
  });

  final String text;
  final bool isSelected;
  final void Function(bool)? onSelected;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: const Text(""),
      selected: isSelected,
      onSelected: onSelected,
      checkmarkColor: Colors.white,
      // labelStyle: TextStyle(color: isSelected ? Colors.white : null),
      // labelStyle: const TextStyle(color: Colors.white),
      avatar: CircularContainer(
        width: 50,
        height: 50,
        backgroundColor: backgroundColor,
      ),
      shape: const CircleBorder(),
      selectedColor: backgroundColor,
      labelPadding: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      backgroundColor: backgroundColor,
    );
  }
}
