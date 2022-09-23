import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login1.png"),
            const SizedBox(
              height: 10,
            ),
             Text(
              'Welcome $name',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Write here:", labelText: "Enter Your name:"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Write here",
                        labelText: "Enter your password:"),
                    onChanged: (value){
                      name = value;
                      setState(() {
                      });
                    },
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text(
                        'login',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
