import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/color_entity.dart';
import '../notifiers/background_color_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final backgroundColorNotifierProvider =
    NotifierProvider<BackgroundColorNotifier, ColorEntity>(
      BackgroundColorNotifier.new,
    );
