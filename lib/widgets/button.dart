import 'package:coding_task/gen/assets.gen.dart';
import 'package:coding_task/theme/colors.dart';
import 'package:coding_task/widgets/space.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.backgroundColor,
    this.icon,
    this.text,
    this.hasBorder = false,
    this.child,
    this.padding,
    this.onTap,
    super.key,
  });
  final Color backgroundColor;
  final SvgGenImage? icon;
  final String? text;
  final bool hasBorder;
  final Widget? child;
  final EdgeInsets? padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: AppColors.white),
        ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 17.0),
        child:
            child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) icon!.svg(),
                HorizontalSpacing(12.0),
                if (text != null) Text(text!),
              ],
            ),
      ),
    );
  }
}
