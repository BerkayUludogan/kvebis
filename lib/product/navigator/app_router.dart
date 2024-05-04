import 'package:auto_route/auto_route.dart';
import 'package:kvebis_app/feature/admin/main_page/view/admin_main_page.dart';
import 'package:kvebis_app/feature/authenticate/login/view/login_view.dart';
import 'package:kvebis_app/feature/splash/splash_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          page: SplashRoute.page,
          path: '/',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          page: LoginRoute.page,
          path: '/loginView',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          page: AdminMainRoute.page,
          path: '/adminMainView',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
      ];
}
