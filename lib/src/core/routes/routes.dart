import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_software_test_application/src/features/home/presentation/screens/home_screen.dart';

/// Router provider keeps all routes
final routerProvider = Provider<Map<String, Widget Function(BuildContext)>>(
  (_) => {'/': (context) => const HomeScreen()},
);
