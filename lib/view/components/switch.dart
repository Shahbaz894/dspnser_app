import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../view_model/provider/switch_provider.dart';

class SwitchWidget extends StatelessWidget {
  final String switchId;
  final String title;
  final int switchIndex;

  const SwitchWidget({
    Key? key,
    required this.switchId,
    required this.switchIndex,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool switchValue = Provider.of<SwitchStateProvider>(context).switchValues[switchId] ?? false;

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
        FlutterSwitch(
          width: 120.0,
          height: 50,
          valueFontSize: 25.0,
          toggleSize: 40,
          toggleColor: Colors.black,
          value: switchValue,
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
           onToggle: (value) {
             Provider.of<SwitchStateProvider>(context, listen: false).updateSwitchValue(switchId, value);
            Provider.of<SwitchStateProvider>(context, listen: false).switchStatus(switchId);


          },
        )
      ],
    );
  }
}












