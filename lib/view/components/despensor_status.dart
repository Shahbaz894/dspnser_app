import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DespensorStatus extends StatefulWidget {
  const DespensorStatus({super.key});

  @override
  State<DespensorStatus> createState() => _DespensorStatusState();
}

class _DespensorStatusState extends State<DespensorStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Desponser 1'),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [Colors.blueAccent, Colors.greenAccent],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0,3)


              )
            ]

          ),
          child: const Text('0'),

        ),
        SizedBox(height: 20,),
        Text('Desponser 2'),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Colors.blueAccent, Colors.greenAccent],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0,3)


                )
              ]

          ),
          child: const Text('0'),

        ),
        SizedBox(height: 20,),
        Text('Desponser 3'),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Colors.blueAccent, Colors.greenAccent],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0,3)


                )
              ]

          ),
          child: const Text('0'),

        ),
        const SizedBox(height: 20,),
        Text('Desponser 4'),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Colors.blueAccent, Colors.greenAccent],
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0,3)


                )
              ]

          ),
          child: const Text('0'),

        )
      ],
    );
  }
}
