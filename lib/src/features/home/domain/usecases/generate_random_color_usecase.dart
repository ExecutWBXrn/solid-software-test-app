import 'dart:math';
import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';

/// Generate random color use case
class GenerateRandomColorUseCase {
  /// Maximal value for color
  static const maxColorValue = 255;

  /// call method
  ColorEntity call() {
    final random = Random();

    return ColorEntity(
      alpha: maxColorValue,
      red: random.nextInt(maxColorValue + 1),
      green: random.nextInt(maxColorValue + 1),
      blue: random.nextInt(maxColorValue + 1),
    );
  }
}
