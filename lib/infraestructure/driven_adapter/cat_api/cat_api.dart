import 'package:primerproyecto/infraestructure/helpers/http/http_helper.dart';

import '../../../config/urls/urls.dart';
import '../../../domain/domain.dart';

class CatAPI implements CatsDataGateWay {
  final _apiKey =
      'live_YOet9DvL4DTW5kb8GnGg2IRu4lR2wwcudDsC919zFpHsH2Lel4ntTtSkdEDRUd1d';

  @override
  Future<List<CatDataModel>?> getCatsWithLimit(int limit) async {
    print('REALIZAMOS PETICIOOOON');
    final response = await HttpHelper.get(
        url: GET_IMAGES_CATS,
        baseUrl: BASE_URL_CATS,
        queryParameters: {
          'has_breeds': '1',
          'limit': limit.toString(),
          'mime_types': 'png'
        },
        headers: Headers(
            replaceHeaders: false, headersData: {'x-api-key': _apiKey}));

    // print('Terminó la peticion');
    // print(response!.data);

    if (response == null) {
      return null;
    } else {
      return List<CatDataModel>.generate((response.data as List).length,
          (index) => CatDataModel.fromMap((response.data as List)[index]));
    }
  }
}
