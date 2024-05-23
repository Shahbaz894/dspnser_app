import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class WaterTrackerLinear extends StatefulWidget {
  final double waterLevel;
  final String tankTitle;
  const WaterTrackerLinear({super.key,required this.waterLevel,required this.tankTitle});

  @override
  _WaterTrackerLinearState createState() => _WaterTrackerLinearState();
}

class _WaterTrackerLinearState extends State<WaterTrackerLinear> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 400,
          child: SfLinearGauge(
            orientation: LinearGaugeOrientation.vertical,
            minimum: 0,
            maximum: 16000,
            interval: 2000,
            axisTrackStyle: const LinearAxisTrackStyle(
              thickness: 100,
              color: Colors.grey,
            ),
            ranges: [
              LinearGaugeRange(
                startValue: 0,
                endValue: widget.waterLevel,
                color: _getWaterLevelColor(),
              ),
            ],
            barPointers: [
              LinearBarPointer(
                value: widget.waterLevel,
                thickness: 100,
                color: _getWaterLevelColor(),
              ),
            ],
            markerPointers: [
              LinearShapePointer(
                value:  widget.waterLevel,
                enableAnimation: true,
                shapeType: LinearShapePointerType.invertedTriangle,
                borderColor: Colors.black,
                borderWidth: 2,
                color: _getWaterLevelColor(),
                height: 20,
                width: 20,
              ),
            ],
          ),
        ),
        Text(widget.tankTitle,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
      ],
    );
  }

  Color _getWaterLevelColor() {
    if ( widget.waterLevel <= 10000) {
      return Colors.blue;
    } else if ( widget.waterLevel <= 13000) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

}
