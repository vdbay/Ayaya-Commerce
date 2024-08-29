import 'package:get/get.dart';
import 'package:myapp/backend/models/testsupabase.dart';
import 'package:myapp/backend/services/testsupabase_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final testsupabaseService = Get.put(TestsupabaseService());

  Future<TestModel> getTestTable() async {
    print(await testsupabaseService.fetchUsers());
    return await testsupabaseService.fetchUsers();
  }

  void increment() => count.value++;
}
