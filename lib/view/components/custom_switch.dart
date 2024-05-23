// import 'package:dspnser_app/res/colors/app_color.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
//
// class CustomSwitch extends StatelessWidget {
//   final String switchId;
//   final String title;
//   final RxBool switchValue;
//   final ValueChanged<bool>? onToggle;
//   final int switchIndex;
//
//   const CustomSwitch({
//     Key? key,
//     required this.switchId,
//     required this.switchValue,
//     required this.switchIndex,
//     this.onToggle,
//     required this.title,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//        Column(
//          children: [
//            Text(switchValue.value.toString()),
//            Text(title,style: const TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
//            SizedBox(height: 10,),
//
//            Obx(() =>  FlutterSwitch(
//              width: 120.0,
//              height: 50,
//              valueFontSize: 25.0,
//              toggleSize: 40,
//              toggleColor: Colors.black,
//              value: switchValue.value,
//              borderRadius: 40,
//              padding: 8,
//              showOnOff: true,
//              activeColor: Colors.green,
//              inactiveColor: Colors.red,
//              activeText: "ON",
//              inactiveText: "OFF",
//              activeTextColor: Colors.white,
//              inactiveTextColor: Colors.white,
//              activeToggleColor: Colors.white,
//              inactiveToggleColor: Colors.white,
//              onToggle: (value) {
//                if (switchIndex == 2) { // Update switch value based on switch index
//                  switchValue.value = value;
//                  onToggle?.call(value);
//                  //print(switchValue.value);
//
//                }
//                else if (switchIndex == 3) {
//                  switchValue.value = value;
//                  onToggle?.call(value);
//                  //print(switchValue.value);
//
//                }
//              //
//               },
//
//            )),
//          ],
//        );
//   }
// }
//
//
//


import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class CustomSwitch extends StatelessWidget {
  final String switchId;
  final String title;
  final RxBool switchValue;
  final ValueChanged<bool>? onToggle;
  final int switchIndex;

  const CustomSwitch({
    Key? key,
    required this.switchId,
    required this.switchValue,
    required this.switchIndex,
    this.onToggle,
    required this.title,
  }) : super(key: key);

  bool getSwitchValue(int switchIndex) {
    switch (switchIndex) {
      case 2:
        return switchValue.value;
      case 3:
        return switchValue.value;
    // Add more cases as needed for other switch indices
      default:
        return false;
    }
  }

  void updateSwitchValue(bool value) {
    switch (switchValue) {
      case 2:
        switchValue.value = value;
        onToggle?.call(value);
      case 3:
        switchValue.value = value;
        onToggle?.call(value);
        break;
    // Add more cases as needed for other switch indices
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Obx(() => FlutterSwitch(
          width: 120.0,
          height: 50,
          valueFontSize: 25.0,
          toggleSize: 40,
          toggleColor: Colors.black,
          value: getSwitchValue(switchIndex),
          borderRadius: 40,
          padding: 8,
          showOnOff: true,
          activeColor: Colors.green,
          inactiveColor: Colors.red,
          activeText: "ON",
          inactiveText: "OFF",
          activeTextColor: Colors.white,
          inactiveTextColor: Colors.white,
          activeToggleColor: Colors.white,
          inactiveToggleColor: Colors.white,
          onToggle: updateSwitchValue,
        )),
      ],
    );
  }
}


