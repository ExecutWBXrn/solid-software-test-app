import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../providers/providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final backgroundColorValue = ref.watch(backgroundColorNotifierProvider);
    final backgroundColorNotifier = ref.read(
      backgroundColorNotifierProvider.notifier,
    );

    return GestureDetector(
      onTap: () {
        backgroundColorNotifier.generateRandomColor();
      },
      child: Scaffold(
        body: AnimatedContainer(
          color: Color.fromARGB(
            backgroundColorValue.alpha,
            backgroundColorValue.red,
            backgroundColorValue.green,
            backgroundColorValue.blue,
          ),
          duration: Duration(milliseconds: 300),
          child: const Center(child: Text("Hello there")),
        ),
      ),
    );
  }
}
