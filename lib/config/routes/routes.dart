import 'package:auto_route/auto_route.dart';
import 'package:primerproyecto/config/routes/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeApp.page, initial: true),
        AutoRoute(page: CatsView.page, path: '/catsView'),
        AutoRoute(page: CatDescriptionView.page),
      ];
}
