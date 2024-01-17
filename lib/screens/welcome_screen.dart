// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_assigment04/routes/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void _navigateBMI(context) async {
      Navigator.pushReplacementNamed(context, AppRouter.bmi);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/EN.jpg"),
            Text("Welcome",style: TextStyle(fontSize: 30),),
            ElevatedButton(
              onPressed: () => _navigateBMI(context),
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}


// Center(
//         child: Column(
//           children: [
//             Image.asset("images/ksu.png"),
//             Text("welcome"),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text("Get Started"),
//             )
//           ],
//         ),
//       ),