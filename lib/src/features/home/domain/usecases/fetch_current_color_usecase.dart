import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';
import 'package:solid_software_test_application/src/features/home/domain/repositories/color_repository.dart';

/// Fetch current color use case
class FetchCurrentColorUseCase {
  final ColorRepository _colorRepository;

  /// initializer
  FetchCurrentColorUseCase(this._colorRepository);

  /// call method
  ColorEntity? call() {
    return _colorRepository.fetchCurrentColor();
  }
}
