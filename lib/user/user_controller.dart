


import 'package:api_using_getx/model/user_model.dart';
import 'package:api_using_getx/service/api_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  var isLoading = true.obs;

  var userList =<UserModel>[].obs;


  fetchUser() async{
    try{
      isLoading(true);
      var userData= await ApiService().fetchUsersData();
      userList.addAll(userData);

    }catch(e){
   print("error fectching userdata $e");

    }
    finally{
      isLoading(false);
    }
  }

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }
}