import 'package:fl_examen_orj/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreenOrj extends StatelessWidget {
   
  const HomeScreenOrj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
           const FlutterLogo(size: 100),
           const SizedBox(height: 20),
           ElevatedButton(
            onPressed: (()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninScreenOrj()))),
            child: const Text('Sing In')),
            const SizedBox(height: 20),
            ElevatedButton(
            onPressed: ((){}),
            child: const Text('Sing Up')),
          ],
        ),
      )
    );
  }
}