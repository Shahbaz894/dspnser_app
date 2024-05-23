import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class TankProgressIndicator extends StatefulWidget {


  @override
  _TankProgressIndicatorState createState() => _TankProgressIndicatorState();
}

class _TankProgressIndicatorState extends State<TankProgressIndicator> {
  final ValueNotifier<double> _waterLevelLiters = ValueNotifier<double>(50);
  final double maxTankLiters = 100;

  @override
  Widget build(BuildContext context) {
    double progressValue = _waterLevelLiters.value / maxTankLiters;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 150,
          height: 300,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              LiquidCustomProgressIndicator(
                value: progressValue,
                backgroundColor: Colors.blueAccent,
                direction: Axis.vertical,
                shapePath: _buildTankPath(),
              ),
              Positioned(
                bottom: 10,
                child: Text(
                  '${_waterLevelLiters.value.toStringAsFixed(0)} Liters',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Path _buildTankPath() {
    // Custom path to resemble a tank
    return Path()
      ..moveTo(10, 0)
      ..lineTo(140, 0)
      ..quadraticBezierTo(150, 0, 150, 10)
      ..lineTo(150, 290)
      ..quadraticBezierTo(150, 300, 140, 300)
      ..lineTo(10, 300)
      ..quadraticBezierTo(0, 300, 0, 290)
      ..lineTo(0, 10)
      ..quadraticBezierTo(0, 0, 10, 0);
  }

  @override
  void dispose() {
    _waterLevelLiters.dispose();
    super.dispose();
  }
}


