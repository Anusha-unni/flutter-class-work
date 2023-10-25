import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          Image.asset('assets/coverpic.jpg'),
          const Text(
            'Welcome Back !',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      labelText: 'Enter email address',
                      suffixIcon: Icon(
                        Icons.mail_outline_outlined,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                      )),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text('Remember me')
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: Size(250, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
