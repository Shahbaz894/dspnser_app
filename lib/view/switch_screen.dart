// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
//
// import '../view_model/controlls/switch_controller.dart';
// import 'components/custom_switch.dart';
//
// class SwitchScreen extends StatelessWidget {
//
//   final SwitchController switchController2 = Get.put(SwitchController(switchId: 'switch_2'));
//   final SwitchController switchController3 = Get.put(SwitchController(switchId: 'switch_3'));
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: [
//
//              Obx(() => CustomSwitch(
//                switchIndex: 2,
//                switchId: 'switch_2',
//                switchValue: switchController2.switchValue.value.obs,
//                onToggle: (value) {
//                  switchController2.handleSwitchPressed('switch_2',);
//                }, title: 'Tank-1 R-1',
//              )),
//              const SizedBox(width: 20),
//              Obx(() => CustomSwitch(
//                switchIndex: 3,
//                switchId: 'switch_3',
//                switchValue: switchController3.switchValue.value.obs,  // Use switchController2 here
//                onToggle: (value) {
//                  switchController3.handleSwitchPressed('switch_3',);  // Use switchController2 here
//                }, title: 'Tank-1 R-2',
//              )),
//
//            ],
//            ),
//          ),
//
//
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//

import 'dart:ffi';


import 'package:dspnser_app/view/components/switch.dart';
import 'package:flutter/cupertino.dart';

class SwitchScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SwitchWidget(
                        switchId:'switch_2' ,
                        switchIndex: 2,
                        title: 'Despn1-R1'),
                  ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_3' ,
                          switchIndex: 3,
                          title: 'Despn1-R2'),
                    ),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_4' ,
                          switchIndex: 4,
                          title: 'Despn3-R1'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_5' ,
                          switchIndex: 5,
                          title: 'Despn3-R2'),
                    ),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_6' ,
                          switchIndex: 6,
                          title: 'Despn4-R1'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_7' ,
                          switchIndex: 7,
                          title: 'Despn4-R2'),
                    ),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_8' ,
                          switchIndex: 8,
                          title: 'Despn6-R1'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_9' ,
                          switchIndex: 9,
                          title: 'Despn6-R2'),
                    ),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_10' ,
                          switchIndex: 10,
                          title: 'Despn7-R1'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_11' ,
                          switchIndex: 11,
                          title: 'Despn7-R2'),
                    ),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_12' ,
                          switchIndex: 12,
                          title: 'Despn8-R1'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SwitchWidget(
                          switchId:'switch_13' ,
                          switchIndex: 13,
                          title: 'Despn8-R2'),
                    ),
                  ],),
               ]));







  }
}
