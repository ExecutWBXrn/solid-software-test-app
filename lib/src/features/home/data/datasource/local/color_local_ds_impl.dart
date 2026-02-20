import 'package:solid_software_test_application/src/features/home/data/models/color_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './color_local_ds.dart';

class ColorLocalDsImpl implements ColorLocalDs {
  final SharedPreferences pref;
  ColorLocalDsImpl(this.pref);

  @override
  ColorModel? fetchCurrentColor() {
    try {
      final alpha = pref.getInt('alpha');
      final red = pref.getInt('red');
      final blue = pref.getInt('blue');
      final green = pref.getInt('green');

      if (alpha == null || red == null || blue == null || green == null) {
        return null;
      }

      return ColorModel(alpha, red, blue, green);
    } catch (_) {
      rethrow;
    }
  }

  @override
  void saveColor(ColorModel color) {
    try {
      pref.setInt('alpha', color.alpha);
      pref.setInt('red', color.red);
      pref.setInt('blue', color.blue);
      pref.setInt('green', color.green);
    } catch (_) {
      rethrow;
    }
  }
}
