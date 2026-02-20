import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';

/// Color Model
class ColorModel {
  /// alpha color (opacity)
  final int alpha;

  /// red color
  final int red;

  /// blue color
  final int blue;

  /// green color
  final int green;

  /// initializer
  ColorModel(this.alpha, this.red, this.blue, this.green);

  /// toEntity method
  ColorEntity toEntity() {
    return ColorEntity(alpha: alpha, red: red, blue: blue, green: green);
  }

  // ignore: member_ordering
  /// fromEntity method
  factory ColorModel.fromEntity(ColorEntity entity) {
    return ColorModel(entity.alpha, entity.red, entity.blue, entity.green);
  }
}
