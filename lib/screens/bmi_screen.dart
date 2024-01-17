// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_assigment04/controller/bmi_controller.dart';
import 'package:get/get.dart';

class BMIScreen extends StatelessWidget {
  const BMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bmiController = Get.put(BMIController());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculate",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.amber.shade300,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "bmi calculator page",
              style: TextStyle(fontSize: 25, color: Colors.redAccent),
            ),
            // IconButton(
            //   icon: const Icon(Icons.android),
            //   color: Colors.red.shade400,
            //   onPressed: () => bmiController.incrmentHeight(),
            // ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center, // Center the Row
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle),
                    color: Colors.red.shade400,
                    onPressed: () => bmiController.decrementHeight(),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text("Height"),
                        SizedBox(
                          width: 60,
                          height: 45,
                          child: TextField(
                            obscureText: false,
                            controller: bmiController.heightTextField,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    color: Colors.red.shade400,
                    onPressed: () => bmiController.incrmentHeight(),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle),
                    color: Colors.red.shade400,
                    onPressed: () => bmiController.decrementWeight(),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text("weight"),
                        SizedBox(
                          width: 60,
                          height: 45,
                          child: TextField(
                            obscureText: false,
                            controller: bmiController.weightTextField,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    color: Colors.red.shade400,
                    onPressed: () => bmiController.incrmentWeight(),
                  ),
                ],
              ),
            ),
            Text('Your BMI ${bmiController.bmi.toStringAsFixed(2)}'),
            ElevatedButton(
              // style: style,
              onPressed: () => {
                bmiController.bmiCalculate(),
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Align(
                      alignment: FractionalOffset.center,
                      child:
                          Text('Your BMI ${bmiController.bmi.toStringAsFixed(2)}'),
                    ),
                    actions: <Widget>[
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ),
                    ],
                  ),
                ),
              },
              child: const Text(
                'Calulate',
                style: TextStyle(color: Colors.pink,backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
