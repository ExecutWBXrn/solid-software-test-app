import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/color_entity.dart';
import '../../domain/usecases/generate_random_color_usecase.dart';
import '../../domain/usecases/fetch_current_color_usecase.dart';
import '../../domain/usecases/save_current_color_usecase.dart';
import '../../domain/repositories/color_repository.dart';
import '../providers/providers.dart';

class BackgroundColorNotifier extends Notifier<ColorEntity> {
  late final ColorRepository _colorRepository;
  late final GenerateRandomColorUseCase _generateRandomColorUseCase;
  late final FetchCurrentColorUseCase _fetchCurrentColorUseCase;
  late final SaveCurrentColorUseCase _saveCurrentColorUseCase;

  @override
  ColorEntity build() {
    _colorRepository = ref.read(colorRepositoryProvider);
    _generateRandomColorUseCase = GenerateRandomColorUseCase();
    _fetchCurrentColorUseCase = FetchCurrentColorUseCase(_colorRepository);
    _saveCurrentColorUseCase = SaveCurrentColorUseCase(_colorRepository);

    final color = _fetchCurrentColorUseCase();
    if (color != null) {
      return color;
    }

    return _generateRandomColorUseCase();
  }

  void generateRandomColor() {
    state = _generateRandomColorUseCase();
    _saveCurrentColorUseCase(state);
  }
}
