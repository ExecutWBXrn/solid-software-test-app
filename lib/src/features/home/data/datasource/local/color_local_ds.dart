import '../../models/color_model.dart';

abstract class ColorLocalDs {
  ColorModel? fetchCurrentColor();
  void saveColor(ColorModel color);
}
