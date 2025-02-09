import 'package:flutter/material.dart';

/// A custom dialog widget that displays a modal dialog box with a centered layout.
///
/// This dialog removes any view insets (such as keyboard padding) and ensures
/// the content is properly aligned and constrained.
class CustomDialog extends StatelessWidget {
  /// Creates a [CustomDialog] with the given [child], and optional [height] and [width].
  ///
  /// The [child] parameter must not be null.
  const CustomDialog({Key? key, required this.child, this.height, this.width})
      : super(key: key);

  /// The widget displayed inside the dialog.
  final Widget child;

  /// The height of the dialog. If not provided, it will adjust based on content size.
  final double? height;

  /// The width of the dialog. If not provided, it will adjust based on content size.
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
