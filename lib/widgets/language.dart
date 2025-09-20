import 'package:coding_task/gen/assets.gen.dart';
import 'package:coding_task/widgets/button.dart';
import 'package:coding_task/widgets/space.dart';
import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Button(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        hasBorder: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('English (US)', style: Theme.of(context).textTheme.bodyLarge),
            HorizontalSpacing(4.0),
            Assets.images.icons.chevronDown.svg(),
          ],
        ),
      ),
    );
  }
}
