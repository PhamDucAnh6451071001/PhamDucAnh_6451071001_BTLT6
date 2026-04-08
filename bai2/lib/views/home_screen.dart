import 'package:flutter/material.dart';
import '../untils/constants.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController =
  TextEditingController();

  void goToProfile(BuildContext context) {

    if (_formKey.currentState!.validate()) {

      String username =
          _usernameController.text;

      Navigator.pushNamed(
        context,
        '/profile',
        arguments: username,
      );

    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Home Screen"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,

            children: [

              Text(
                "Enter Username",
                style: TextStyle(fontSize: 24),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: _usernameController,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),

                validator: (value) {

                  if (value == null ||
                      value.isEmpty) {

                    return
                      "Username cannot be empty";

                  }

                  return null;
                },
              ),

              SizedBox(height: 20),

              CustomButton(
                text: "Go to Profile",
                onPressed: () {
                  goToProfile(context);
                },
              ),

              SizedBox(height: 20),

              // MSSV
              Text(
                Constants.student.mssv,
                style: TextStyle(fontSize: 18),
              ),

            ],
          ),
        ),
      ),
    );
  }
}