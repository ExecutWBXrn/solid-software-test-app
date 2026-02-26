import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solid_software_test_application/src/features/home/domain/entities/color_entity.dart';
import 'package:solid_software_test_application/src/features/home/domain/usecases/fetch_current_color_usecase.dart';
import 'package:solid_software_test_application/src/features/home/domain/usecases/save_current_color_usecase.dart';
import 'package:solid_software_test_application/src/features/home/presentation/providers/providers.dart';

/// Background color notifier
class BackgroundColorNotifier extends Notifier<ColorEntity> {
  @override
  ColorEntity build() {
    final colorRepository = ref.read(colorRepositoryProvider);
    final generateRandomColorUseCase = ref.read(
      generateRandomColorUseCaseProvider,
    );
    final fetchCurrentColorUseCase = FetchCurrentColorUseCase(colorRepository);

    return fetchCurrentColorUseCase() ?? generateRandomColorUseCase();
  }

  /// generate random color method
  void generateRandomColor() {
    final newColor = ref.read(generateRandomColorUseCaseProvider)();
    state = newColor;
    SaveCurrentColorUseCase(ref.read(colorRepositoryProvider))(state);
  }
}
