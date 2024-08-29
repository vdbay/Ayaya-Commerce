import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/backend/sbenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: SbEnv.sbEnvUrl,
    anonKey: SbEnv.sbEnvSUKey,
  );
  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
