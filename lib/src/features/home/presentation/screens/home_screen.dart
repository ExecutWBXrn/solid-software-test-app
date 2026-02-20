import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../providers/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgroundColorValue = ref.watch(backgroundColorNotifierProvider);
    final backgroundColorNotifier = ref.read(
      backgroundColorNotifierProvider.notifier,
    );

    return GestureDetector(
      onTap: () => backgroundColorNotifier.generateRandomColor(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(
          backgroundColorValue.alpha,
          backgroundColorValue.red,
          backgroundColorValue.green,
          backgroundColorValue.blue,
        ),
        body: const Center(child: Text("Hello there")),
      ),
    );
  }
}
