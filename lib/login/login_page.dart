import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_entries/login/numbers_notifier.dart';
import 'package:test_entries/login/provide.dart';
import 'login_text_field.dart';

// final numberStateProvider = StateNotifierProvider((ref) {
//   return Counter();
// });

// class Counter extends StateNotifier<int> {
//   Counter() : super(0);

//   void increment() => state++;
// }

// final counterProvider = StateProvider((ref) => 0);
// final numberNotifProv = StateNotifierProvider((ref) {
//   return NumbersNotifier();
// });

// class LoginPage extends ConsumerWidget {
//   LoginPage({Key? key}) : super(key: key);

//   final TextEditingController controllerLogin = TextEditingController();
//   final TextEditingController controllerPassword = TextEditingController();

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final count = ref.watch(numberStateProvider);
//     final numbersNotifierState = ref.watch(numberNotifProv);
//     return Scaffold(
//       body: SafeArea(
//         child:
//              Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(13.0),
//                   child: LoginTextField(
//                     controller: controllerLogin,
//                     labelText: 'Login $numbersNotifierState',
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(13.0),
//                   child: LoginTextField(
//                     controller: controllerPassword,
//                     labelText: 'Password',
//                   ),
//                 ),
//                 TextButton(
//                   child: const Text('Войти'),
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/notes');
//                   },
//                 ),
//                 TextButton(
//                   child: const Text('Нет аккаунта'),
//                   onPressed: () =>
//                     ref.read(numberNotifProv)
//                   ,
//                 ),
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,

//           ),
//         ),
//       );

//   }
// }

//-------------------STATE PROVIDER----------------------------------
final Provid provid = Provid();

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController controllerLogin = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    provid.ref = ref;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: LoginTextField(
                controller: controllerLogin,
                labelText: 'Login ${provid.getValue()}',
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
                provid.plusplus();
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
