import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/color_entity.dart';
import '../../domain/usecases/generate_random_color_usecase.dart';

class BackgroundColorNotifier extends Notifier<ColorEntity> {
  late final GenerateRandomColorUseCase _generateRandomColorUseCase;

  @override
  ColorEntity build() {
    _generateRandomColorUseCase = GenerateRandomColorUseCase();
    return _generateRandomColorUseCase();
  }

  void generateRandomColor() {
    state = _generateRandomColorUseCase();
  }
}
