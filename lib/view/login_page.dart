import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  var name;
   LoginPage({super.key, this.name});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
       Expanded(child:  Center(
         child: ElevatedButton(onPressed: (){
           Get.back(result: const HomePage());

         }, child:  Text(Get.arguments[0]),),
       ))
      ],),
    );
  }
}
