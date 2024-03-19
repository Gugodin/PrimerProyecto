// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../models/models.dart';

class CatDataUseCase {
  CatsDataGateWay catsDataGateWay;

  CatDataUseCase({
    required this.catsDataGateWay,
  });

  Future<List<CatDataModel>?> getCatsWithLimit(int limit) =>
      catsDataGateWay.getCatsWithLimit(limit);
}
