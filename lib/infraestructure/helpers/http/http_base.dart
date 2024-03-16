import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../config/urls/urls.dart';

// ignore: constant_identifier_names
enum TypeHTPP { GET, POST, PUT, DELETE }

Map<String, dynamic> headersDefault = {
  'Content-Type': 'application/json',
  'Accept': '*/*',
};

Future<String?> httpBase(
    {required TypeHTPP type, required String path, String? baseUrl}) async {
  // Esto e
  baseUrl ??= BASE_URL;

  try {
    if (await InternetConnectionChecker().hasConnection) {
    } else {
      print('\n\n **** EL DISPOSITIVO NO TIENE INTERNET **** \n\n');
      return null;
    }
  } catch (e) {
    print('\n\n **** OCURRIO UN PROBLEMA EN LA PETICION CON URL **** \n');
    print('$baseUrl$path\n');
    print('ERROR:\n$e');
    return null;
  }
}
