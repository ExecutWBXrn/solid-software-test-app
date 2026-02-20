import 'dart:math';
import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';

/// Generate random color use case
class GenerateRandomColorUseCase {
  /// call method
  ColorEntity call() {
    return ColorEntity(
      // ignore: no_magic_number
      alpha: 255,
      // ignore: no_magic_number
      red: Random().nextInt(256),
      // ignore: no_magic_number
      blue: Random().nextInt(256),
      // ignore: no_magic_number
      green: Random().nextInt(256),
    );
  }
}
