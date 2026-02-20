import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:solid_software_test_application/src/features/home/presentation/providers/providers.dart';

/// Home Screen Page (main one)
class HomeScreen extends ConsumerStatefulWidget {
  /// initializer
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final backgroundColorValue = ref.watch(backgroundColorNotifierProvider);
    final backgroundColorNotifier = ref.read(
      backgroundColorNotifierProvider.notifier,
    );

    return GestureDetector(
      onTap: backgroundColorNotifier.generateRandomColor,
      child: Scaffold(
        body: AnimatedContainer(
          color: Color.fromARGB(
            backgroundColorValue.alpha,
            backgroundColorValue.red,
            backgroundColorValue.green,
            backgroundColorValue.blue,
          ),
          duration: const Duration(milliseconds: 300),
          child: const Center(child: Text("Hello there")),
        ),
      ),
    );
  }
}
