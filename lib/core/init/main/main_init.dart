part of '../../../main.dart';

final getIt = GetIt.instance;

Future<void> initInitializes() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<AppRouter>(AppRouter());
}
