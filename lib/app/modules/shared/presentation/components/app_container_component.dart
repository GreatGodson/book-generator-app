import 'package:flutter/material.dart';

class AppContainerComponent extends StatelessWidget {
  const AppContainerComponent({
    super.key,
    this.padding,
    this.margin,
    this.color,
    this.borderRadius,
    this.child,
    this.width,
    this.onTap,
    this.onPanEnd,
    this.onPanStart,
    this.onPanUpdate,
    this.borderColor,
    this.borderWidth,
    this.height,
    this.constraints,
    this.alignment,
  });

  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final double? borderRadius;
  final Widget? child;
  final double? width;
  final VoidCallback? onTap;
  final void Function(DragStartDetails)? onPanStart;
  final void Function(DragUpdateDetails)? onPanUpdate;
  final void Function(DragEndDetails)? onPanEnd;
  final Color? borderColor;
  final double? borderWidth;
  final double? height;
  final BoxConstraints? constraints;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      child: Container(
        alignment: alignment ?? Alignment.center,
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        constraints: constraints,
        decoration: BoxDecoration(
          borderRadius: borderRadius == null
              ? null
              : BorderRadius.circular(
                  borderRadius!,
                ),
          color: color ?? Colors.transparent,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 0.5,
          ),
        ),
        child: child,
      ),
    );
  }
}
