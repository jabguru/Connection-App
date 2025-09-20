import 'package:coding_task/gen/assets.gen.dart';
import 'package:coding_task/theme/colors.dart';
import 'package:coding_task/widgets/button.dart';
import 'package:coding_task/widgets/list_selector.dart';
import 'package:coding_task/widgets/space.dart';
import 'package:flutter/material.dart';

enum Language {
  english("English"),
  spanish("Español"),
  french("Français"),
  german("German"),
  chinese("Chinese"),
  japanese("Japanese"),
  korean("Korean");

  final String name;
  const Language(this.name);
}

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Button(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        hasBorder: true,
        onTap: () => _showLanguageSelection(context),
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

void _showLanguageSelection(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return LanguageSelectionModal();
    },
  );
}

class LanguageSelectionModal extends StatefulWidget {
  const LanguageSelectionModal({super.key});

  @override
  State<LanguageSelectionModal> createState() => _LanguageSelectionModalState();
}

class _LanguageSelectionModalState extends State<LanguageSelectionModal> {
  Language _selectedLanguage = Language.english;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        color: AppColors.white,
      ),
      height: MediaQuery.sizeOf(context).height * 0.6,
      child: Column(
        children: [
          VerticalSpacing(12.0),
          Assets.images.icons.line.svg(),
          VerticalSpacing(22.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select your preferred language',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Assets.images.icons.close.svg(),
                ),
              ],
            ),
          ),
          VerticalSpacing(20.0),
          Divider(
            color: AppColors.primary.withValues(alpha: 0.1),
            thickness: 1.0,
          ),
          VerticalSpacing(12.5),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: Language.values.length,
              itemBuilder: (context, index) {
                Language language = Language.values[index];
                bool isSelected = language == _selectedLanguage;
                return ListSelector(
                  text: language.name,
                  isSelected: isSelected,
                  onTap: () => setState(() {
                    _selectedLanguage = language;
                  }),
                );
              },
              separatorBuilder: (context, index) =>
                  Divider(color: AppColors.background, thickness: 1.0),
            ),
          ),
          VerticalSpacing(48.0),
        ],
      ),
    );
  }
}
