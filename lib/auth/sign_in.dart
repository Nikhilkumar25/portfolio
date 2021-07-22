import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: _bodyWidget(),
    );
  }
}

Widget _bodyWidget() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Sign In",
          style: TextStyle(fontSize: 40),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
          color: Colors.blueAccent,
          child: const SizedBox(
            height: 60,
            width: 80,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.blueGrey,
          child: const SizedBox(
            height: 60,
            width: 280,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.blueGrey,
          child: const SizedBox(
            height: 60,
            width: 280,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Colors.blueGrey,
          child: const SizedBox(
            height: 60,
            width: 280,
          ),
        ),
      ],
    ),
  );
}
