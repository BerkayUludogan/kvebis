part of '../../../main.dart';

final getIt = GetIt.instance;
Future<void> initInitializes() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  getIt.registerSingleton<AppRouter>(AppRouter());
}
