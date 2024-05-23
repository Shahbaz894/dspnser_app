import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dspnser_app/view/home_page.dart';
import 'package:dspnser_app/view/login_page.dart';
import 'package:dspnser_app/view/splash_screen.dart';
import 'package:dspnser_app/view_model/provider/log_provider.dart';
import 'package:dspnser_app/view_model/provider/switch_provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: const FirebaseOptions(
//         apiKey: 'AIzaSyC1kXxcZJd0ML3WAQA1TXIT_ZdJLmqObwE',
//         appId: '1:719577189437:android:165c4eb55560d948e5ee54',
//         messagingSenderId: '719577189437',
//         projectId: 'dispenser-app-be285',
//      databaseURL: 'https://dispenser-app-be285-default-rtdb.firebaseio.com/'
//     ),
//
//
//
//   );
//   FirebaseFirestore.instance.settings=const Settings(
//     persistenceEnabled: true
//   );
//
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return  GetMaterialApp(
//
//
//       home: const HomePage(),
//       getPages: [
//         GetPage(name: '/', page: ()=>const SplashScreen()),
//         GetPage(name: '/HomePage', page: ()=>const HomePage()),
//         GetPage(name: '/loginPage', page: ()=>LoginPage()),
//         //GetPage(name: '/', page: ()=>const HomePage()),
//       ],
//     );
//   }
// }
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyC1kXxcZJd0ML3WAQA1TXIT_ZdJLmqObwE',
        appId: '1:719577189437:android:165c4eb55560d948e5ee54',
        messagingSenderId: '719577189437',
        projectId: 'dispenser-app-be285',
     databaseURL: 'https://dispenser-app-be285-default-rtdb.firebaseio.com/'
    ),



  );
  FirebaseFirestore.instance.settings=const Settings(
    persistenceEnabled: true
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SwitchStateProvider()), // Assuming SwitchState is your provider class
        ChangeNotifierProvider(create: (_) => LogProvider())
        // Add more providers if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}



