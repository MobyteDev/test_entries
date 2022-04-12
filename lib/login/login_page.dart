import 'package:flutter/material.dart';

import 'login_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController controllerLogin = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: LoginTextField(
                controller: controllerLogin,
                labelText: 'Login',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: LoginTextField(
                controller: controllerPassword,
                labelText: 'Password',
              ),
            ),
            TextButton(
              child: const Text('Войти'),
              onPressed: () {
                Navigator.pushNamed(context, '/notes');
              },
            ),
            TextButton(
              child: const Text('Нет аккаунта'),
              onPressed: () {},
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
