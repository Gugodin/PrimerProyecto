import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../ui/ui.dart';

final routerProvider = StateProvider<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeApp())
  ]);
});
