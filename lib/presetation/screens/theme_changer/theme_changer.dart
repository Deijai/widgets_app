import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presetation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkModeTheme = ref.watch(isDarkModeProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
          actions: [
            IconButton(
              icon: Icon(isDarkModeTheme
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).update((state) => !state);
              },
            )
          ],
        ),
        body: const _ThemeChangerView());
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    // ignore: unused_element
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(colorListProvider);
    final int selectedIndexColor = ref.watch(selectedIndexColorProvider);

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final Color color = colosList[index];

        return RadioListTile(
            title: Text(
              'Esta cor',
              style: TextStyle(color: color),
            ),
            subtitle: Text('${color.value}'),
            activeColor: color,
            value: index,
            groupValue: selectedIndexColor,
            onChanged: (value) {
              ref.read(selectedIndexColorProvider.notifier).state = index;
            });
      },
      itemCount: colors.length,
    );
  }
}
