import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solid_software_test_application/src/features/home/data/datasource/local/color_local_ds.dart';
import 'package:solid_software_test_application/src/features/home/data/datasource/local/color_local_ds_impl.dart';
import 'package:solid_software_test_application/src/features/home/data/repositories_impl/color_repository_impl.dart';
import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';
import 'package:solid_software_test_application/src/features/home/domain/repositories/color_repository.dart';
import 'package:solid_software_test_application/src/features/home/presentation/notifiers/background_color_notifier.dart';

/// Shared preferences provider (override in main.dart)
// ignore: avoid_unused_parameters
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

/// Color local data source provider
final colorLocalDsProvider = Provider<ColorLocalDs>(
  (ref) => ColorLocalDsImpl(ref.read(sharedPreferencesProvider)),
);

/// Color repository provider
final colorRepositoryProvider = Provider<ColorRepository>(
  (ref) => ColorRepositoryImpl(ref.read(colorLocalDsProvider)),
);

/// Background color notifier provider
final backgroundColorNotifierProvider =
    NotifierProvider<BackgroundColorNotifier, ColorEntity>(
      BackgroundColorNotifier.new,
    );
