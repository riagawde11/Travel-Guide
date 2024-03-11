import 'package:flutter/material.dart';

void main() {
  runApp(RegisterScreen());
}

class RegisterScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactNumController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
      ),
    );
  }
}


