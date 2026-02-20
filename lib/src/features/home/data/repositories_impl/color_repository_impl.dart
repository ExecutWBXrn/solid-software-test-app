import '../../domain/entities/color_entity.dart';
import '../datasource/local/color_local_ds.dart';
import '../../domain/repositories/color_repository.dart';
import '../models/color_model.dart';

class ColorRepositoryImpl implements ColorRepository {
  final ColorLocalDs localDs;

  ColorRepositoryImpl(this.localDs);

  @override
  ColorEntity? fetchCurrentColor() {
    try {
      final model = localDs.fetchCurrentColor();
      return model?.toEntity();
    } catch (_) {
      throw Exception("Something went wrong");
    }
  }

  @override
  void saveColor(ColorEntity color) {
    try {
      localDs.saveColor(ColorModel.fromEntity(color));
    } catch (_) {
      throw Exception("Something went wrong");
    }
  }
}
