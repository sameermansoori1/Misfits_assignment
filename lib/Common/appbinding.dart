import 'package:get/get.dart';
import '../Controller/drawerController.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DrawerController1(), fenix: true);


  }
}

