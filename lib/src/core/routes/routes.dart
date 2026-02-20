import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/home/presentation/screens/home_screen.dart';

final routerProvider = Provider<Map<String, Widget Function(BuildContext)>>(
  (ref) => {'/': (context) => const HomeScreen()},
);
