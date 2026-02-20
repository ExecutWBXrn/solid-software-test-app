import '../entities/color_entity.dart';
import '../repositories/color_repository.dart';

class FetchCurrentColorUseCase {
  final ColorRepository colorRepository;

  FetchCurrentColorUseCase(this.colorRepository);

  ColorEntity? call() {
    return colorRepository.fetchCurrentColor();
  }
}
