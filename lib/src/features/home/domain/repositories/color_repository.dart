import '../../domain/entities/color_entity.dart';

abstract class ColorRepository {
  ColorEntity? fetchCurrentColor();

  void saveColor(ColorEntity color);
}
