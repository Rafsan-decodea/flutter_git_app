import 'package:flutter/material.dart';
import 'package:pmp/pmp/theme.dart';

class PmpPadding extends StatelessWidget {
  final Widget? child;

  const PmpPadding(
    this.child, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: PmpTheme.Padding,
        child: child,
      );
}
