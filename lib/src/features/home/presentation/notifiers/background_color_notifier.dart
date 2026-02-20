import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';
import 'package:solid_software_test_application/src/features/home/domain/repositories/color_repository.dart';
import 'package:solid_software_test_application/src/features/home/domain/usecases/fetch_current_color_usecase.dart';
import 'package:solid_software_test_application/src/features/home/domain/usecases/generate_random_color_usecase.dart';
import 'package:solid_software_test_application/src/features/home/domain/usecases/save_current_color_usecase.dart';
import 'package:solid_software_test_application/src/features/home/presentation/providers/providers.dart';

/// Background color notifier
class BackgroundColorNotifier extends Notifier<ColorEntity> {
  // ignore: avoid_late_keyword
  late final ColorRepository _colorRepository;
  // ignore: avoid_late_keyword
  late final GenerateRandomColorUseCase _generateRandomColorUseCase;
  // ignore: avoid_late_keyword
  late final FetchCurrentColorUseCase _fetchCurrentColorUseCase;
  // ignore: avoid_late_keyword
  late final SaveCurrentColorUseCase _saveCurrentColorUseCase;

  @override
  ColorEntity build() {
    _colorRepository = ref.read(colorRepositoryProvider);
    _generateRandomColorUseCase = GenerateRandomColorUseCase();
    _fetchCurrentColorUseCase = FetchCurrentColorUseCase(_colorRepository);
    _saveCurrentColorUseCase = SaveCurrentColorUseCase(_colorRepository);

    return _fetchCurrentColorUseCase() ?? _generateRandomColorUseCase();
  }

  /// generate random color method
  void generateRandomColor() {
    state = _generateRandomColorUseCase();
    _saveCurrentColorUseCase(state);
  }
}
