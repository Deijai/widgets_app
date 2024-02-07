import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presetation/providers/counter_provider.dart';
import 'package:widgets_app/presetation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterprovider);
    final bool isDarkModeTheme = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
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
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterprovider.notifier).state++;
          },
          child: const Icon(Icons.add)),
    );
  }
}
