import 'package:dspnser_app/res/colors/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils{

  static void fieldFocusChange(BuildContext context,FocusNode current ,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static toasMessage(String message){

     Fluttertoast.showToast(
         msg: message,
       backgroundColor: AppColor.blackColor,
         fontSize: 20,
       textColor: AppColor.whiteColor,
       gravity: ToastGravity.BOTTOM
     );
  }
  static snackBar(String message,String title){
    Get.snackbar(
      title,
      message,
      backgroundColor: AppColor.redColor,
      borderRadius: 10,
      borderColor: AppColor.purpelColor,
      borderWidth: 1,
      boxShadows: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],

    );
  }
}