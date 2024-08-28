import 'dart:convert';
import 'package:get/get.dart';
import 'package:myapp/backend/models/testsupabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TestsupabaseService extends GetxController {
  // Get a reference your Supabase client
  final supabase = Supabase.instance.client;

  Future<TestModel> fetchUsers() async {
    final response = await supabase.from('test').select();

    return TestModel.fromJson(jsonDecode(response.toString()));
  }
}
