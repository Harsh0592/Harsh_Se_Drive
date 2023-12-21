/*11. Create login and registration form */

import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  bool _isLoginForm = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isLoginForm? 'Login':'Register'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if(value!.isEmpty || !value.contains('@')) {
                    return 'Invalid Email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if(value!.isEmpty || value.length<6) {
                    return 'Password must be at 6 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              if(!_isLoginForm)
              TextFormField(
                controller: _confirmpasswordController,
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                validator: (value) {
                  if(value != _passwordController.text) {
                    return 'Password do not match';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    //perform login or registration logic here
                    //for simplicity, we'll just print the entered email and password
                    print('Email: ${_emailController.text}');
                    print('Password: ${_passwordController.text}');
                    if(!_isLoginForm){
                      print('Confirm Password: ${_confirmpasswordController.text}');
                    }
                  }
                },
                child: Text(_isLoginForm? 'Login':'Register'), 
                ),
                SizedBox(height: 16.0),
                TextButton(onPressed: (){
                  setState(() {
                    _isLoginForm = !_isLoginForm;
                });
                },
                child: Text(_isLoginForm? 'New User? Register Here':'Already have an account? Login'), 
              ),
            ],
          ),
          ),
      ),
    );
  }
}