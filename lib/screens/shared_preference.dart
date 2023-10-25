import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // For storing user data locally

class SharedPage extends StatefulWidget {
  const SharedPage({Key? key});

  @override
  State<SharedPage> createState() => _SharedPageState();
}

class _SharedPageState extends State<SharedPage> {
  // Create controllers for input fields
  TextEditingController usernameController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  // Declare variables to store user data
  String username = "";
  String name = "";
  bool likesApp = false;
  int favouritenumber = 0;

  @override
  void initState() {
    // This method is called when the widget is first created
    loadUserData(); // Load user data from SharedPreferences when the widget is initialized
    super.initState(); // Call the parent class's initState method
  }

  // Asynchronous method to load user data from SharedPreferences
  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Update the state with the data retrieved from SharedPreferences
      usernameController.text = prefs.getString('username').toString();
      placeController.text = prefs.getString('Place').toString();
      likesApp = prefs.getBool('likesApp') ?? false;
      phoneNumberController.text = prefs.getInt('phoneNumber').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(label: Text("Username")),
            ),
            TextField(
              controller: placeController,
              decoration: const InputDecoration(labelText: 'Place'),
            ),
            TextField(
              controller: phoneNumberController,
              decoration: const InputDecoration(labelText: 'Phone number'),
            ),
            Row(
              children: [
                const Text("Likes this app?"),
                Switch(
                  value: likesApp,
                  onChanged: ((value) {
                    setState(() {
                      likesApp = !likesApp;
                    });
                  }),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                saveUserData(); // Call the method to save user data
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Color.fromARGB(255, 187, 134, 102),
                    content: const Text('Data saved'),
                  ),
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  // Asynchronous method to save user data to SharedPreferences
  Future<void> saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', usernameController.text);
    await prefs.setString('Place', placeController.text);
    await prefs.setBool('likesApp', likesApp);
    await prefs.setInt('phoneNumber', int.parse(phoneNumberController.text));
  }
}
