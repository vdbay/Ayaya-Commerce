import 'package:get/get.dart';
import 'package:myapp/backend/models/testsupabase.dart';
import 'package:myapp/backend/services/testsupabase_service.dart';

class TestsupabaseController extends GetxController {
  final testService = Get.put(TestsupabaseService());

  Future<TestModel> fetchOneTest() async {
    return await testService.fetchOneTest();
  }

  Future<List<TestModel>> fetchAllTest() async {
    return await testService.fetchAllTest();
  }
}
