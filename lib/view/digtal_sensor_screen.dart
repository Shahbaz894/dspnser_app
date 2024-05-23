import 'package:flutter/material.dart';

import 'components/digtal_sensor_status.dart';

class DigitalSensorStatusScreen extends StatefulWidget {
  const DigitalSensorStatusScreen({super.key});

  @override
  State<DigitalSensorStatusScreen> createState() => _DigitalSensorStatusScreenState();
}

class _DigitalSensorStatusScreenState extends State<DigitalSensorStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: DigitalSensorStatus(sensorTitle: 'Tank-1 Cover', isSwitchOn: true,),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: DigitalSensorStatus(sensorTitle: 'Tank-1 Overflow', isSwitchOn: false,),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: DigitalSensorStatus(sensorTitle: 'Tank-1 Leakage', isSwitchOn: true,),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: DigitalSensorStatus(sensorTitle: 'Tank-2 Cover', isSwitchOn: false,),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: DigitalSensorStatus(sensorTitle: 'Tank-2 Overflow', isSwitchOn: true,),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: DigitalSensorStatus(sensorTitle: 'Tank-2 Cover', isSwitchOn: false,),
      ),
    ],);
  }
}
