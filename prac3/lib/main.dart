import 'package:flutter/material.dart';

void main() {
   runApp ( MyApp());
}

class MyApp extends StatelessWidget
{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpeningPage(),
    );
  }
}


class OpeningPage extends StatelessWidget{
  const OpeningPage({super.key});
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('WELCOME TO AMIGO TRAVELLES'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Logo.jpeg',
                  width: 120,
                  height: 120,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder:(BuildContext context) {
                          return  RegisterScreen();
                        }
                    ),
                        );
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 10),
                Text(
                  'Forgot your password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
   RegisterScreen ({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactNumController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController dobController = TextEditingController();


  @override
  Widget build( BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name'),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 20.0),
            Text('Contact Number'),
            TextField(
              controller: contactNumController,
              decoration: InputDecoration(
                hintText: 'Enter your contact number',
              ),
            ),
            SizedBox(height: 20.0),
            Text('Age'),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: 'Enter your age',
              ),
            ),
            SizedBox(height: 20.0),
            Text('Date of Birth'),
            TextField(
              controller: dobController,
              decoration: InputDecoration(
                hintText: 'Enter your date of birth',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Process the registration data
                String name = nameController.text;
                String contactNum = contactNumController.text;
                int age = int.tryParse(ageController.text) ?? 0;
                String dob = dobController.text;

                // Validate the data and proceed with registration logic
                print('Name: $name');
                print('Contact Number: $contactNum');
                print('Age: $age');
                print('Date of Birth: $dob');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
