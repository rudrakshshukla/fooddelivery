
import '../firebase/firebase_maneger.dart';

import '../navigationutils/navaigation_route.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
//  PreferenceUtils prefs = await PreferenceUtils.getInstance();
//  final dir = await getApplicationDocumentsDirectory();
//  Hive..init(dir.path);



//  locator.registerLazySingleton(() async => HiveManeger().initHive(),instanceName: "Box");

//  locator.registerLazySingleton(()  => PreferenceUtils.getInstance());

//  locator.registerSingleton<HiveManeger>(HiveManeger());

  locator.registerSingleton<NavigationRoutes>(NavigationRoutes());
  locator.registerSingleton<FirebaseManager>(FirebaseManager());



}