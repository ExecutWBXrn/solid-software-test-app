import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_software_test_application/src/core/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solid_software_test_application/src/features/home/presentation/providers/providers.dart';

Future<void> main() async {
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(routes: ref.read(routerProvider));
  }
}
