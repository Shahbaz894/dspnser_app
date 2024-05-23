// import 'package:flutter/material.dart';
//
// class DigitalControlSensor extends StatelessWidget {
//   final String sensorTitle;
//   final bool isSwitched;
//
//   DigitalControlSensor({Key? key, required this.sensorTitle, required this.isSwitched}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.green.withOpacity(0.8),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Text(
//             sensorTitle,
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Switch(
//                 value: isSwitched,
//                 onChanged: (newValue) {
//                   // Implement your logic here
//                 },
//                 activeColor: Colors.green,
//                 inactiveThumbColor: Colors.red,
//                 activeTrackColor: Colors.lightGreenAccent,
//                 inactiveTrackColor: Colors.redAccent,
//               ),
//               const SizedBox(width: 5),
//               Text(
//                 isSwitched ? 'On' : 'Off',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: isSwitched ? Colors.green : Colors.red,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DigitalControlSensor extends StatelessWidget {
  final String sensorTitle;
  final RxBool isSwitched;

  DigitalControlSensor({Key? key, required this.sensorTitle, required bool isSwitched})
      : isSwitched = isSwitched.obs,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            sensorTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Switch(
                value: isSwitched.value,
                onChanged: (newValue) {
                  isSwitched.value = newValue;
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                activeTrackColor: Colors.lightGreenAccent,
                inactiveTrackColor: Colors.redAccent,
              )),
              const SizedBox(width: 5),
              Obx(() => Text(
                isSwitched.value ? 'On' : 'Off',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: isSwitched.value ? Colors.green : Colors.red,
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
