import 'package:auto_route/auto_route.dart';

import 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  // @override
  // RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/'),
        AutoRoute(page: OnboardingRoute.page, path: "/onboarding_screen"),
        AutoRoute(
          page: AuthRoute.page,
          path: "/auth_screen",
          children: [
            AutoRoute(page: LoginSignUpRoute.page, path: ""),
            AutoRoute(page: LoginRoute.page, path: "login_screen"),
            AutoRoute(page: SignUpRoute.page, path: "sign_up_screen"),
            AutoRoute(
                page: VerifyAccountRoute.page, path: "verify_your_account"),
            AutoRoute(
                page: CustomizePreferenceRoute.page,
                path: "customize_preference"),
          ],
        ),
        AutoRoute(
          page: NavBaseRoute.page,
          path: "/nav_screen",
          children: [
            AutoRoute(page: HomeRoute.page, path: ""),
            AutoRoute(page: SavedRoute.page, path: "saved_screen"),
            AutoRoute(page: CreateRoute.page, path: "create_screen"),
            AutoRoute(page: ShopRoute.page, path: "shop_screen"),
            AutoRoute(page: ProfileRoute.page, path: "profile_screen"),
          ],
        ),
      ];
}
