import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/color_entity.dart';
import '../notifiers/background_color_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/datasource/local/color_local_ds.dart';
import '../../data/datasource/local/color_local_ds_impl.dart';
import '../../domain/repositories/color_repository.dart';
import '../../data/repositories_impl/color_repository_impl.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final colorLocalDsProvider = Provider<ColorLocalDs>(
  (ref) => ColorLocalDsImpl(ref.read(sharedPreferencesProvider)),
);

final colorRepositoryProvider = Provider<ColorRepository>(
  (ref) => ColorRepositoryImpl(ref.read(colorLocalDsProvider)),
);

final backgroundColorNotifierProvider =
    NotifierProvider<BackgroundColorNotifier, ColorEntity>(
      BackgroundColorNotifier.new,
    );
