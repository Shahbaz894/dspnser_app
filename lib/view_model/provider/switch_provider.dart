import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


import 'package:flutter/foundation.dart';

import '../../services/firebase_services/firebase_services.dart';


// class SwitchStateProvider extends ChangeNotifier {
//   final FirebaseService _firebaseService = FirebaseService();
//   late DatabaseReference _database;
//   Map<String, bool> switchValues = {
//
//   };
//
//   void updateSwitchValue(String switchId, bool value) {
//     switchValues[switchId] = value;
//     _firebaseService.updateSwitchValue(switchId, value);
//     notifyListeners();
//   }
//   switchStatus( String switchId) {
//     _database = FirebaseDatabase.instance.reference().child('switches').child(switchId);
//     _database!.onValue.listen((event) {
//       switchValues= (event.snapshot.value ?? false);
//       print('Successfully connected to Firebase Database for switch: $switchId'); // Consider using a logging library
//     });
//   }
//
//   void updateSwitchStatus(bool newValue, String switchId) async {
//     // print('Switch ID: $switchId');
//     // print('New Value: $newValue');
//
//     try {
//       await FirebaseDatabase.instance
//           .reference()
//           .child('switches')
//           .child(switchId)
//           .set(newValue);
//       notifyListeners();
//     } catch (e) {
//       print('Error updating switch value: $e');
//     }
//   }
//
// }



class SwitchStateProvider extends ChangeNotifier {
  final FirebaseService _firebaseService = FirebaseService();
  late DatabaseReference _database;
  Map<String, bool> switchValues = {};

  void updateSwitchValue(String switchId, bool value) {
    switchValues[switchId] = value;
    _firebaseService.updateSwitchValue(switchId, value);
    notifyListeners();
  }

  void switchStatus(String switchId) {
    _database = FirebaseDatabase.instance.reference().child('switches').child(switchId);
    _database.onValue.listen((event) {
      switchValues[switchId] = (event.snapshot.value ?? false) as bool;
      print('Successfully connected to Firebase Database for switch: $switchId');
      notifyListeners();
    });
  }

  Future<void> updateSwitchStatus(bool newValue, String switchId) async {
    try {
      await FirebaseDatabase.instance
          .reference()
          .child('switches')
          .child(switchId)
          .set(newValue);
      notifyListeners();
    } catch (e) {
      print('Error updating switch value: $e');
    }
  }
}









