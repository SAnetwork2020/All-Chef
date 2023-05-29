// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:all_chef/screens/auth_screen/auth_screen.dart' as _i1;
import 'package:all_chef/screens/auth_screen/login_screen/login_screen.dart'
    as _i2;
import 'package:all_chef/screens/auth_screen/login_signup.dart' as _i3;
import 'package:all_chef/screens/auth_screen/sign_up_screen/sign_up_screen.dart'
    as _i4;
import 'package:all_chef/screens/auth_screen/verify_your_account/verify_your_account.dart'
    as _i7;
import 'package:all_chef/screens/customize_preference_screen/customize_preference_screen.dart'
    as _i8;
import 'package:all_chef/screens/nav_screen/create_Screen/create_Screen.dart'
    as _i11;
import 'package:all_chef/screens/nav_screen/home_screen/home_screen.dart'
    as _i10;
import 'package:all_chef/screens/nav_screen/nav_screen.dart' as _i9;
import 'package:all_chef/screens/nav_screen/profile_screen/profile_screen.dart'
    as _i12;
import 'package:all_chef/screens/nav_screen/saved_screen/saved_screen.dart'
    as _i13;
import 'package:all_chef/screens/nav_screen/shop_screen/shop_screen.dart'
    as _i14;
import 'package:all_chef/screens/onboarding_screen/onboarding_screen.dart'
    as _i5;
import 'package:all_chef/screens/splash_screen/splash_screen.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i15;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    LoginSignUpRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginSignUpScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OnboardingScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
    VerifyAccountRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.VerifyAccountScreen(),
      );
    },
    CustomizePreferenceRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.CustomizePreferenceScreen(),
      );
    },
    NavBaseRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NavBaseScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.HomeScreen(),
      );
    },
    CreateRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.CreateScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfileScreen(),
      );
    },
    SavedRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SavedScreen(),
      );
    },
    ShopRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ShopScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i15.PageRouteInfo<void> {
  const AuthRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginSignUpScreen]
class LoginSignUpRoute extends _i15.PageRouteInfo<void> {
  const LoginSignUpRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginSignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginSignUpRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpRoute extends _i15.PageRouteInfo<void> {
  const SignUpRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OnboardingScreen]
class OnboardingRoute extends _i15.PageRouteInfo<void> {
  const OnboardingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.VerifyAccountScreen]
class VerifyAccountRoute extends _i15.PageRouteInfo<void> {
  const VerifyAccountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          VerifyAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyAccountRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.CustomizePreferenceScreen]
class CustomizePreferenceRoute extends _i15.PageRouteInfo<void> {
  const CustomizePreferenceRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CustomizePreferenceRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomizePreferenceRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NavBaseScreen]
class NavBaseRoute extends _i15.PageRouteInfo<void> {
  const NavBaseRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NavBaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBaseRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.HomeScreen]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.CreateScreen]
class CreateRoute extends _i15.PageRouteInfo<void> {
  const CreateRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfileScreen]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SavedScreen]
class SavedRoute extends _i15.PageRouteInfo<void> {
  const SavedRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SavedRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ShopScreen]
class ShopRoute extends _i15.PageRouteInfo<void> {
  const ShopRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
