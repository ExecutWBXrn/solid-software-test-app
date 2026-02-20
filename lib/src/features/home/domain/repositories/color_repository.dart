import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';

/// Color Repository
abstract class ColorRepository {
  /// fetch current color method
  ColorEntity? fetchCurrentColor();

  /// save color method
  void saveColor(ColorEntity color);
}
