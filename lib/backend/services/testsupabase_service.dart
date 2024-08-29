import 'package:get/get.dart';
import 'package:myapp/backend/models/testsupabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TestsupabaseService extends GetxController {
  // Get a reference your Supabase client
  final supabase = Supabase.instance.client;

  Future<TestModel> fetchOneTest() async {
    final response = await supabase.from('test').select().limit(1).single();
    return TestModel.fromJson(response);
  }

  Future<List<TestModel>> fetchAllTest() async {
    final response = await supabase.from('test').select();
    return (response as List).map((data) => TestModel.fromJson(data)).toList();
  }
}
