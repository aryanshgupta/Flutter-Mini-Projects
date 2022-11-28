import 'package:flutter/material.dart';

class LoginData {
  String username = "";
  String password = "";
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LoginData _loginData = LoginData();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext inContext) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(50.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (inValue) {
                    if (inValue != null && inValue.isEmpty) {
                      return "Please enter username";
                    }
                    return null;
                  },
                  onSaved: (inValue) {
                    _loginData.username = inValue!;
                  },
                  decoration: InputDecoration(
                    hintText: "none@none.com",
                    labelText: "Username (Email address)",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (inValue) {
                    if (inValue != null && inValue.length < 10) {
                      return "Password must be >=10 in length";
                    }
                    return null;
                  },
                  onSaved: (inValue) {
                    _loginData.password = inValue!;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                ElevatedButton(
                  child: Text("Log In!"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print("Username: ${_loginData.username}");
                      print("Password: ${_loginData.password}");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
