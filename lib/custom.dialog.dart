import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key, required this.child, this.height, this.width}) : super(key: key);

  final Widget child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removeViewInsets(
      removeLeft: true,
      removeTop: true,
      removeRight: true,
      removeBottom: true,
      context: context,
      child: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 70.0),
          child: Material(
            borderRadius: BorderRadius.circular(8),
            child: child,
          ),
        ),
      ),
    );
  }
}
