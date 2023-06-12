import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final gap = const SizedBox(
    height: 8,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
      ),
      body: Column(children: <Widget>[
        gap,
        SizedBox(
            child: TextFormField(
          decoration: const InputDecoration(
            labelText: 'usernaem',
            hintText: 'enter ur username',
          ),
        )),
        gap,
        SizedBox(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'password',
              hintText: 'enter ur password',
            ),
          ),
        ),
        const SizedBox(
          height: 8,
          width: double.infinity,
        ),
        SizedBox(
          child: ElevatedButton(onPressed: () {}, child: const Text('Login')),
        ),
        const SizedBox(
          height: 8,
          width: double.infinity,
        ),
        SizedBox(
          child:
              ElevatedButton(onPressed: () {}, child: const Text('Register')),
        )
      ]),
    );
  }
}
