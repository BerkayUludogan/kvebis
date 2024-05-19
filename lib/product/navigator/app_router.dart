import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/feature/admin/add_nursery/view/add_nursery_view.dart';
import 'package:kvebis_app/feature/admin/main_page/view/admin_main_page.dart';
import 'package:kvebis_app/feature/admin/nursery_operations/view/operations_view.dart';
import 'package:kvebis_app/feature/authenticate/login/view/login_view.dart';
import 'package:kvebis_app/feature/nursery_admin/add_parent/view/add_parent_view.dart';
import 'package:kvebis_app/feature/nursery_admin/add_student/view/add_student_view.dart';
import 'package:kvebis_app/feature/nursery_admin/create_class/view/create_class_view.dart';
import 'package:kvebis_app/feature/nursery_admin/main_page/view/main_page_view.dart';
import 'package:kvebis_app/feature/splash/splash_view.dart';
import 'package:kvebis_app/feature/teacher/view/teacher_main_view.dart';

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
        CustomRoute(
          page: TeacherMainRoute.page,
          path: '/teacherMainView',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          page: AddNurseryRoute.page,
          path: '/addNurseryView',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          page: NurseryAdminAddParentRoute.page,
          path: '/nurseryAdminAddParentView',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          page: NurseryAdminCreateClassRoute.page,
          path: '/nurseryAdminCreateClassView',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          page: OperationsRoute.page,
          path: '/operationsView',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
      ];
}
