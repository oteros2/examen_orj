import 'package:fl_examen_orj/screens/screens.dart';
import 'package:fl_examen_orj/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SigninScreenOrj extends StatelessWidget {
  const SigninScreenOrj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(size: 100),
              const SizedBox(height: 20),
              const CustomTextFormField(
                hintText: 'usuario',
                suffixIcon: Icons.person_add_rounded,
                obscureText: false,
              ),
              const SizedBox(height: 20),
              const CustomTextFormField(
                  hintText: '********', labelText: 'Contraseña', obscureText: true),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListViewScreenOrj()))),
                  child: const Text('Sing In')),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
