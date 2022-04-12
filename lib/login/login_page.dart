import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_entries/login/logic/providers.dart';

import 'login_text_field.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController controllerLogin = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
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
              onPressed: () {
                 ref.read(counterController);
              },
            ),
            Consumer(
              builder: (context, ref, child) {
                return Text(
                    // ref.watch(counterController).state.toString(),
                    ref.watch(counterController.state).state.toString());
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
