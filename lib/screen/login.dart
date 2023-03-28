// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _loginId = useState('test');

    final _password = useState<String>('');

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.pink.shade200, Colors.yellow.shade700],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/logo.png'),
                Text(_loginId.value),
                SizedBox(
                  height: 100,
                ),
                TextField(
                    onChanged: (String value) {
                      _loginId.value = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(_loginId.value),
                      fillColor: Colors.white,
                      filled: true,
                    )),
                SizedBox(
                  height: 50,
                ),
                TextField(
                    onChanged: (String value) {
                      _password.value = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('password'),
                      fillColor: Colors.white,
                      filled: true,
                    )),
                SizedBox(
                  height: 100,
                ),
                OutlinedButton(
                  child: const Text('ログイン'),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(400, 40),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(color: Colors.white, width: 3.0),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
