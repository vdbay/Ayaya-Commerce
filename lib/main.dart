import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://cvgsjljdvaqvdesokygx.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN2Z3NqbGpkdmFxdmRlc29reWd4Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDg1MzcyNSwiZXhwIjoyMDQwNDI5NzI1fQ.EFnVpz4_nKqNxJlntIuKzE3JErh8ASbfEIpc66aKY2g',
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
