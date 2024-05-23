import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DigitalSensorStatus extends StatefulWidget {
  final String sensorTitle;
  final bool isSwitchOn;
  const DigitalSensorStatus({super.key, required this.sensorTitle, required this.isSwitchOn});

  @override
  State<DigitalSensorStatus> createState() => _DigitalSensorStatusState();
}

class _DigitalSensorStatusState extends State<DigitalSensorStatus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,

          decoration: BoxDecoration(
              color: widget.isSwitchOn?Colors.green:Colors.red,
            borderRadius: BorderRadius.circular(50)
          ),
        ),
        const SizedBox(width: 10,),
        Text(widget.sensorTitle,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
      ],
    );
  }
}
