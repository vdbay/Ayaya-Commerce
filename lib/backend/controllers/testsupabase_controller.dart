import 'package:get/get.dart';
import 'package:myapp/backend/models/testsupabase.dart';
import 'package:myapp/backend/services/testsupabase_service.dart';

class TestsupabaseController extends GetxController {
  final testService = Get.put(TestsupabaseService());

  Future<TestModel> fetchUsers() async {
    return await testService.fetchUsers();
  }
}
