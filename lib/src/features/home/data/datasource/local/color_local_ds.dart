import 'package:solid_software_test_application/src/features/home/data/models/color_model.dart';

/// Abstract color local data source
abstract class ColorLocalDs {
  /// fetch current color method
  ColorModel? fetchCurrentColor();

  /// save color method
  void saveColor(ColorModel color);
}
