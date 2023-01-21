import 'package:flutter/material.dart';
import 'package:perola_pet_app/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/perola.png'),
              const Text('Bem-vindo ao Pérola Pet App'),
              goToHome(context)
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton goToHome(BuildContext context) {
    return ElevatedButton(
      onPressed: (() => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          )),
      child: const Text("Login"),
    );
  }
}
