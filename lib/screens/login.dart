import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/login.jpg",
                    height: 300,
                    width: 200,
                  ),
                  // Text(
                  //   'Welcome',
                  //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  // )
                ],
              ),
              Row(
                children: [
                  Text('Welcome',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500))
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Enter email',
                  suffixIcon: Icon(Icons.mail_outline),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Enter password',
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Register Now",
                        style: TextStyle(color: Colors.brown),
                      )
                      // Checkbox(value: false, onChanged: (value) {}),
                      // const Text('Remember me')
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 110)),
                  Column(
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 100, left: 70)),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 12, 20, 169),
                        fixedSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
