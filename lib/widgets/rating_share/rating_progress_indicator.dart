import 'package:flutter/material.dart';

class RatingLinearProgressIndicator extends StatelessWidget {
  const RatingLinearProgressIndicator({
    super.key, required this.text, required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: LinearProgressIndicator(
              value: value,
              borderRadius: BorderRadius.circular(7),
              valueColor:
              const AlwaysStoppedAnimation(Colors.lightBlue),
              minHeight: 11,
              backgroundColor: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}