import 'package:test/test.dart';
import 'package:weather_app/src/features/domain/usecases/get_current_city.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late GetCurrentCityUseCase getCurrentCityUseCase;
  late MockGeoLocatorRepository mockGeoLocatorRepository;

  setUp(() {
    mockGeoLocatorRepository = MockGeoLocatorRepository();
    getCurrentCityUseCase = GetCurrentCityUseCase(mockGeoLocatorRepository);
  });

  test('', () {

  });
}