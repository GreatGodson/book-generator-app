import 'package:flutter/material.dart';

import '../../../../../core/framework/navigator/navigator.dart';
import '../../../../../core/framework/utils/spacings.dart';


class MaterialAppBarComponent extends StatelessWidget {
  const MaterialAppBarComponent({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.customPop,
  });

  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? customPop;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      centerTitle: true,
      leading: leading ??
          (Navigator.of(context).canPop()
              ? GestureDetector(
            onTap: () {
              customPop == null ? navigator.pop() : customPop!();
            },
            child: Icon(
              Icons.arrow_back,
              size: Spacings.spacing24,
            ),
          )
              : null),
      title: Text(
        title,
        style: TextStyle(
          fontSize: Spacings.spacing16,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: actions,
    );
  }
}
