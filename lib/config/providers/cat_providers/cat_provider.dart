

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/domain.dart';
import '../../../infraestructure/infraestrucutre.dart';

final catProvider = Provider<CatDataUseCase>((ref) {
  return CatDataUseCase(catsDataGateWay: CatAPI());
});

