import '../entities/color_entity.dart';
import '../repositories/color_repository.dart';

class SaveCurrentColorUseCase {
  final ColorRepository colorRepository;

  SaveCurrentColorUseCase(this.colorRepository);

  void call(ColorEntity color) {
    return colorRepository.saveColor(color);
  }
}
