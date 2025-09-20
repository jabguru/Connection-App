import 'package:coding_task/theme/colors.dart';
import 'package:flutter/material.dart';

class ListSelector extends StatelessWidget {
  const ListSelector({
    required this.text,
    required this.isSelected,
    required this.onTap,
    super.key,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: Theme.of(context).textTheme.labelMedium),
            Stack(
              children: [
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.text),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                if (isSelected)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: AppColors.text,
                        radius: 4.0,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
