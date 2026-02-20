import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/color_entity.dart';
import '../notifiers/background_color_notifier.dart';

final backgroundColorNotifierProvider =
    NotifierProvider<BackgroundColorNotifier, ColorEntity>(
      BackgroundColorNotifier.new,
    );
