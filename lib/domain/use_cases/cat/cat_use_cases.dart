// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../models/models.dart';

class CatDataUse {
  CatsDataGateWay catsDataGateWay;

  CatDataUse({
    required this.catsDataGateWay,
  });

  Future<List<CatDataModel>> getCatsWithLimit(int limit) =>
      catsDataGateWay.getCatsWithLimit(limit);
}
