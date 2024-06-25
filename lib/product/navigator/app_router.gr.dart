// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddNurseryRoute.name: (routeData) {
      final args = routeData.argsAs<AddNurseryRouteArgs>(
          orElse: () => const AddNurseryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddNurseryView(key: args.key),
      );
    },
    AdminMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminMainView(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginView(key: args.key),
      );
    },
    NurseryAdminAddParentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NurseryAdminAddParentView(),
      );
    },
    NurseryAdminAddStudentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NurseryAdminAddStudentView(),
      );
    },
    NurseryAdminCreateClassRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NurseryAdminCreateClassView(),
      );
    },
    NurseryAdminRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NurseryAdminView(),
      );
    },
    NurseryRouteing.name: (routeData) {
      final args = routeData.argsAs<NurseryRouteingArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NurseryViewing(
          nurseryName: args.nurseryName,
          nurseryOwnersName: args.nurseryOwnersName,
          nurseryOwnersSurname: args.nurseryOwnersSurname,
          nurseryOwnersPhone: args.nurseryOwnersPhone,
          nurseryDistrict: args.nurseryDistrict,
          nurseryLocationProvince: args.nurseryLocationProvince,
          nurseryAddress: args.nurseryAddress,
          monthlyFeeForNursery: args.monthlyFeeForNursery,
          adminID: args.adminID,
          key: args.key,
        ),
      );
    },
    OperationsRoute.name: (routeData) {
      final args = routeData.argsAs<OperationsRouteArgs>(
          orElse: () => const OperationsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OperationsView(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashView(),
      );
    },
    TeacherMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TeacherMainView(),
      );
    },
  };
}

/// generated route for
/// [AddNurseryView]
class AddNurseryRoute extends PageRouteInfo<AddNurseryRouteArgs> {
  AddNurseryRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AddNurseryRoute.name,
          args: AddNurseryRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddNurseryRoute';

  static const PageInfo<AddNurseryRouteArgs> page =
      PageInfo<AddNurseryRouteArgs>(name);
}

class AddNurseryRouteArgs {
  const AddNurseryRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddNurseryRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AdminMainView]
class AdminMainRoute extends PageRouteInfo<void> {
  const AdminMainRoute({List<PageRouteInfo>? children})
      : super(
          AdminMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [NurseryAdminAddParentView]
class NurseryAdminAddParentRoute extends PageRouteInfo<void> {
  const NurseryAdminAddParentRoute({List<PageRouteInfo>? children})
      : super(
          NurseryAdminAddParentRoute.name,
          initialChildren: children,
        );

  static const String name = 'NurseryAdminAddParentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NurseryAdminAddStudentView]
class NurseryAdminAddStudentRoute extends PageRouteInfo<void> {
  const NurseryAdminAddStudentRoute({List<PageRouteInfo>? children})
      : super(
          NurseryAdminAddStudentRoute.name,
          initialChildren: children,
        );

  static const String name = 'NurseryAdminAddStudentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NurseryAdminCreateClassView]
class NurseryAdminCreateClassRoute extends PageRouteInfo<void> {
  const NurseryAdminCreateClassRoute({List<PageRouteInfo>? children})
      : super(
          NurseryAdminCreateClassRoute.name,
          initialChildren: children,
        );

  static const String name = 'NurseryAdminCreateClassRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NurseryAdminView]
class NurseryAdminRoute extends PageRouteInfo<void> {
  const NurseryAdminRoute({List<PageRouteInfo>? children})
      : super(
          NurseryAdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'NurseryAdminRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NurseryViewing]
class NurseryRouteing extends PageRouteInfo<NurseryRouteingArgs> {
  NurseryRouteing({
    required String nurseryName,
    required String nurseryOwnersName,
    required String nurseryOwnersSurname,
    required String nurseryOwnersPhone,
    required String nurseryDistrict,
    required String nurseryLocationProvince,
    required String nurseryAddress,
    required String monthlyFeeForNursery,
    required String adminID,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NurseryRouteing.name,
          args: NurseryRouteingArgs(
            nurseryName: nurseryName,
            nurseryOwnersName: nurseryOwnersName,
            nurseryOwnersSurname: nurseryOwnersSurname,
            nurseryOwnersPhone: nurseryOwnersPhone,
            nurseryDistrict: nurseryDistrict,
            nurseryLocationProvince: nurseryLocationProvince,
            nurseryAddress: nurseryAddress,
            monthlyFeeForNursery: monthlyFeeForNursery,
            adminID: adminID,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'NurseryRouteing';

  static const PageInfo<NurseryRouteingArgs> page =
      PageInfo<NurseryRouteingArgs>(name);
}

class NurseryRouteingArgs {
  const NurseryRouteingArgs({
    required this.nurseryName,
    required this.nurseryOwnersName,
    required this.nurseryOwnersSurname,
    required this.nurseryOwnersPhone,
    required this.nurseryDistrict,
    required this.nurseryLocationProvince,
    required this.nurseryAddress,
    required this.monthlyFeeForNursery,
    required this.adminID,
    this.key,
  });

  final String nurseryName;

  final String nurseryOwnersName;

  final String nurseryOwnersSurname;

  final String nurseryOwnersPhone;

  final String nurseryDistrict;

  final String nurseryLocationProvince;

  final String nurseryAddress;

  final String monthlyFeeForNursery;

  final String adminID;

  final Key? key;

  @override
  String toString() {
    return 'NurseryRouteingArgs{nurseryName: $nurseryName, nurseryOwnersName: $nurseryOwnersName, nurseryOwnersSurname: $nurseryOwnersSurname, nurseryOwnersPhone: $nurseryOwnersPhone, nurseryDistrict: $nurseryDistrict, nurseryLocationProvince: $nurseryLocationProvince, nurseryAddress: $nurseryAddress, monthlyFeeForNursery: $monthlyFeeForNursery, adminID: $adminID, key: $key}';
  }
}

/// generated route for
/// [OperationsView]
class OperationsRoute extends PageRouteInfo<OperationsRouteArgs> {
  OperationsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OperationsRoute.name,
          args: OperationsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OperationsRoute';

  static const PageInfo<OperationsRouteArgs> page =
      PageInfo<OperationsRouteArgs>(name);
}

class OperationsRouteArgs {
  const OperationsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OperationsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TeacherMainView]
class TeacherMainRoute extends PageRouteInfo<void> {
  const TeacherMainRoute({List<PageRouteInfo>? children})
      : super(
          TeacherMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeacherMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
