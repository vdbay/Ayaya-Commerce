import 'package:get/get.dart';
import 'package:myapp/backend/controllers/testsupabase_controller.dart';
import 'package:myapp/backend/models/testsupabase.dart';

class HomeController extends GetxController {
  final testsupabaseService = Get.put(TestsupabaseController());

  Future<TestModel> getOneTest() async {
    return await testsupabaseService.fetchOneTest();
  }

  Future<List<TestModel>> getAllTest() async {
    return await testsupabaseService.fetchAllTest();
  }
}
