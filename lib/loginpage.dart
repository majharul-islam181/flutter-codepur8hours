import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Write here",
                        labelText: "Enter your password:"),
                  ),
                  const SizedBox(height: 10.0),
                  InkWell(
                    onTap: () async {

                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, '/home');
                      },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton?50:150,
                      height: 50,
                      // color: Colors.deepPurple, //decoration has color property
                      alignment: Alignment.center,
                      child: changeButton?Icon(Icons.done,color: Colors.white,): Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(changeButton?50:15),
                        color: Colors.deepPurple,
                      ),
                    ),
                  )



                  /*
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

                   */
                ],
              ),
            )
          ],
        ));
  }
}
