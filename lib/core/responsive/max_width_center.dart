import 'package:flutter/material.dart';
import 'package:mobile_developer_test/core/responsive/responsive.dart';

/// this class use to make item center in screen
/// with his original width

class MaxWidthCenter extends StatelessWidget {
  const MaxWidthCenter({
    super.key,
    required this.child,
    required this.maxWidth,
    this.maxHeight,
  });
  final Widget child;
  final double maxWidth;
  final double? maxHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: !context.isMobile ? maxWidth : double.infinity,
          maxHeight: maxHeight ?? double.infinity,
        ),
        child: child,
      ),
    );
  }
}
