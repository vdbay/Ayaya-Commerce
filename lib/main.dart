import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app/routes/app_pages.dart';

const supabaseUrl = 'https://cvgsjljdvaqvdesokygx.supabase.co';
const supabaseKey = String.fromEnvironment(
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN2Z3NqbGpkdmFxdmRlc29reWd4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ4NTM3MjUsImV4cCI6MjA0MDQyOTcyNX0.cOG1Kg2H038nLoCCFSeEltaS-dq1icN5DBAHGXT4mCY');

Future<void> main() async {
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKey,
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
