// import 'package:firebase_database/firebase_database.dart';
// import 'package:get/get.dart';
//
// class SwitchController extends GetxController {
//   final String switchId;
//   var switchValue = false.obs;
//   DatabaseReference? _switchRef;
//
//   SwitchController({required this.switchId}) {
//     _switchRef = FirebaseDatabase.instance.reference().child('switches').child(switchId);
//     _switchRef!.onValue.listen((event) {
//       switchValue.value = (event.snapshot.value ?? false) as bool;
//     });
//   }
//
//   void updateSwitchValue(bool newValue,String switchId) async {
//     print(switchId);
//     print(!switchValue.value);
//     //print(newValue);
//     try {
//       await FirebaseDatabase.instance
//           .reference()
//           .child('switches')
//           .child(switchId)
//           .set(newValue);
//     } catch (e) {
//       print('Error updating switch value: $e');
//     }
//   }
//
//   void handleSwitchPressed(String switchId,) {
//     // print(switchId);
//     // print(!switchValue.value);
//     switch (switchId) {
//       case 'switch_1':
//         updateSwitchValue(!switchValue.value,switchId);
//
//         break;
//       case 'switch_2':
//         updateSwitchValue(!switchValue.value,switchId);
//
//         break;
//       // case 'switch_3':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_4':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_5':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_6':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_7':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_8':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_9':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_10':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_11':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       // case 'switch_12':
//       //   updateSwitchValue(!switchValue.value,switchId);
//       //
//       //   break;
//       default:
//         print('Invalid switch ID');
//     }
//   }
// }
//
//
//
//
//
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';



class SwitchController extends GetxController {
  final String switchId;
  var switchValue = false.obs;
  DatabaseReference? _switchRef;

  SwitchController({required this.switchId}) {
    _switchRef = FirebaseDatabase.instance.reference().child('switches').child(switchId);
    _switchRef!.onValue.listen((event) {
      switchValue.value = (event.snapshot.value ?? false) as bool;
      print('Successfully connected to Firebase Database for switch: $switchId'); // Consider using a logging library
    });
  }

  void updateSwitchValue(bool newValue, String switchId) async {
    print('Switch ID: $switchId');
    print('Current Switch Value: ${!switchValue.value}');
    print('New Value: $newValue');

    try {
      await FirebaseDatabase.instance
          .reference()
          .child('switches')
          .child(switchId)
          .set(newValue);
    } catch (e) {
      print('Error updating switch value: $e'); // Improve error handling based on error type
    }
  }

  void handleSwitchPressed(String switchId) {
    print('Switch ID: $switchId');
    print('Current Switch Value: ${!switchValue.value}');

    bool newValue = !switchValue.value; // Toggle the current value

    print('New Value: $newValue'); // Consider using a logging library

    updateSwitchValue(newValue, switchId); // Call updateSwitchValue with the updated value
  }
}
