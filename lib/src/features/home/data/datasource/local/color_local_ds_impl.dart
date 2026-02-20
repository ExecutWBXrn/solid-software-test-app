import 'package:shared_preferences/shared_preferences.dart';
import 'package:solid_software_test_application/src/features/home/data/datasource/local/color_local_ds.dart';
import 'package:solid_software_test_application/src/features/home/data/models/color_model.dart';

/// Implementation of color local data source
class ColorLocalDsImpl implements ColorLocalDs {
  final SharedPreferences _pref;

  /// initializer
  const ColorLocalDsImpl(this._pref);

  @override
  ColorModel? fetchCurrentColor() {
    try {
      final alpha = _pref.getInt('alpha');
      final red = _pref.getInt('red');
      final blue = _pref.getInt('blue');
      final green = _pref.getInt('green');

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
      _pref.setInt('alpha', color.alpha);
      _pref.setInt('red', color.red);
      _pref.setInt('blue', color.blue);
      _pref.setInt('green', color.green);
    } catch (_) {
      rethrow;
    }
  }
}
