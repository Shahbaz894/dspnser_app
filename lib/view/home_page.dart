import 'package:dspnser_app/view/switch_screen.dart';
import 'package:flutter/material.dart';
import 'components/despensor_status.dart';
import 'components/drawer.dart';
import 'components/radial _guage.dart';
import 'components/tank_widget.dart';
import 'digtal_sensor_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Home page')),
          backgroundColor: Colors.purple,
        ),
        drawer: AppDrawer(),
        body:   SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: RadialGaugeScreen(
                      pointerValue: 80,
                      guageTitle: "Tank 1",
                    ),
                  ),
                  Expanded(
                    child: RadialGaugeScreen(
                      pointerValue: 60,
                      guageTitle: "Tank 2",
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: WaterTrackerLinear(
                      waterLevel: 13000,
                      tankTitle: 'Tank1',
                    ),
                  ),
                  Expanded(
                    child: WaterTrackerLinear(
                      waterLevel: 9000,
                      tankTitle: 'Tank2',
                    ),
                  ),
                ],

              ),
                SwitchScreen(),
              DigitalSensorStatusScreen(),


              SizedBox(height: 20,),
              DespensorStatus()


            ],
          ),
        ),
      ),
    );
  }
}
