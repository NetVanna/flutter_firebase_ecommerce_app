import 'package:flutter/material.dart';

import 'custome_curve_widget.dart';

class CurveEdgeWidget extends StatelessWidget {
  const CurveEdgeWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurveWidget(),
      child: child,
    );
  }
}
