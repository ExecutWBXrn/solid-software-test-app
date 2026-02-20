import '../entities/color_entity.dart';
import 'dart:math';

class GenerateRandomColorUseCase {
  ColorEntity call() {
    return ColorEntity(
      alpha: 255,
      red: Random().nextInt(255),
      blue: Random().nextInt(255),
      green: Random().nextInt(255),
    );
  }
}
