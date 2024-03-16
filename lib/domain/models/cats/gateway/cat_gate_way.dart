import '../../models.dart';

abstract class CatsDataGateWay {
  Future<List<CatDataModel>> getCatsWithLimit(int limit);
}
