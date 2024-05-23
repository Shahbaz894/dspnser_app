// import 'package:firebase_database/firebase_database.dart';
//
//
// import 'package:firebase_database/firebase_database.dart';
//
// class FirebaseService {
//   late DatabaseReference _switchRef;
//   late Function(bool) onSwitchValueChanged; // Callback function to notify state changes
//
//   FirebaseService({required String switchId}) {
//     _switchRef = FirebaseDatabase.instance.reference().child('switches').child(switchId);
//   }
//
//   void observeSwitchValueChanges() {
//     _switchRef.onValue.listen((event) {
//       dynamic value = event.snapshot.value; // Use dynamic type to handle any type
//       if (value is bool) {
//         bool newValue = value;
//         onSwitchValueChanged(newValue); // Notify the callback function with the new value
//       } else {
//         // Handle unexpected value type from Firebase
//         print('Unexpected value type from Firebase: $value');
//       }
//     });
//   }
//
//   Future<void> updateSwitchValue(bool newValue) async {
//     try {
//       await _switchRef.set(newValue);
//     } catch (e) {
//       // Handle error (e.g., show error message)
//       print('Error updating switch value: $e');
//     }
//   }
// }

import 'package:firebase_database/firebase_database.dart';





class FirebaseService {
  late DatabaseReference _database;
  late Function(bool) onSwitchValueChanged; // Callback function to notify state changes

  FirebaseService() {
    _database = FirebaseDatabase.instance.reference().child('switches');
  }




  Future<void> updateSwitchValue(String switchId, bool newValue) async {
    DatabaseReference switchRef = _database.child(switchId);
    try {
      await switchRef.set(newValue);

    } catch (e) {
      // Handle error (e.g., show error message)
      print('Error updating switch value: $e');
    }
  }
}

