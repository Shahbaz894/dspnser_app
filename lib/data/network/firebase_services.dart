import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dspnser_app/data/app_expceptions.dart';
import 'package:dspnser_app/data/network/base_firebase_services.dart';

class FirebaseServices extends BaseFirebaseServices{
  @override
  Future getDataFirebase(String firebaseInstance) async{
    try{
    final request= await FirebaseFirestore.instance.collection('/DispencerApp').get().timeout(Duration(seconds: 10));


    final List<DocumentSnapshot> documents = request.docs;

    documents.forEach((document) {
      print(document.data());
         });
    }on SocketException {
      throw InternetExceptions();
        }on RequestTimeOut{
      throw RequestTimeOut();
    }

    }



}