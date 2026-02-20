import '../../domain/entities/color_entity.dart';

class ColorModel {
  final int alpha;
  final int red;
  final int blue;
  final int green;
  ColorModel(this.alpha, this.red, this.blue, this.green);

  ColorEntity toEntity() {
    return ColorEntity(alpha: alpha, red: red, blue: blue, green: green);
  }

  factory ColorModel.fromEntity(ColorEntity entity) {
    return ColorModel(entity.alpha, entity.red, entity.blue, entity.green);
  }
}
