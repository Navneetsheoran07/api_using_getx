
import 'package:api_using_getx/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class UserView extends StatelessWidget {
 UserView({Key? key }):super(key: key);
 var userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx((){
        if(userController.isLoading.value){
       return const Center(child: CircularProgressIndicator());

        }
        return ListView.builder(
         itemCount:  userController.userList.length,
         itemBuilder: (context,index){
           return Padding(padding: const EdgeInsets.all(10.0),
           child:  Container(
             color:  Colors.lightBlueAccent,
             child:  ListTile(
               title: Text(userController.userList[index].name),
               subtitle:  Text(userController.userList[index].email),
             ),
           ),

           );
         },

        );
      }),
    );
  }
}
