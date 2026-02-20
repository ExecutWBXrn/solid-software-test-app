import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';
import 'package:solid_software_test_application/src/features/home/domain/repositories/color_repository.dart';

/// Save current color use case
class SaveCurrentColorUseCase {
  final ColorRepository _colorRepository;

  /// initializer
  SaveCurrentColorUseCase(this._colorRepository);

  /// call method
  void call(ColorEntity color) {
    return _colorRepository.saveColor(color);
  }
}
