import 'package:solid_software_test_application/src/features/home/data/datasource/local/color_local_ds.dart';
import 'package:solid_software_test_application/src/features/home/data/models/color_model.dart';
import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';
import 'package:solid_software_test_application/src/features/home/domain/repositories/color_repository.dart';

/// Implementation of color repository
class ColorRepositoryImpl implements ColorRepository {
  final ColorLocalDs _localDs;

  /// initializer
  const ColorRepositoryImpl(this._localDs);

  @override
  ColorEntity? fetchCurrentColor() {
    try {
      return _localDs.fetchCurrentColor()?.toEntity();
    } catch (_) {
      throw Exception("Something went wrong");
    }
  }

  @override
  void saveColor(ColorEntity color) {
    try {
      _localDs.saveColor(ColorModel.fromEntity(color));
    } catch (_) {
      throw Exception("Something went wrong");
    }
  }
}
