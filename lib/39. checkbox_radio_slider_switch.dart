import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var _checkboxValue = false;
  var _switchValue = false;
  var _sliderValue = 5.0;
  var _radioValue = 1;

  @override
  Widget build(BuildContext inContext) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Checkbox(
                value: _checkboxValue,
                onChanged: (inValue) {
                  setState(() {
                    _checkboxValue = inValue!;
                  });
                },
              ),
              Switch(
                value: _switchValue,
                onChanged: (inValue) {
                  setState(() {
                    _switchValue = inValue;
                  });
                },
              ),
              Slider(
                min: 0.0,
                max: 20.0,
                value: _sliderValue,
                onChanged: (inValue) {
                  setState(
                    () => _sliderValue = inValue,
                  );
                },
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: (inValue) {
                      setState(() {
                        _radioValue = inValue!;
                      });
                    },
                  ),
                  Text("Option 1"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: (inValue) {
                      setState(() {
                        _radioValue = inValue!;
                      });
                    },
                  ),
                  Text("Option 2"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: (inValue) {
                      setState(() {
                        _radioValue = inValue!;
                      });
                    },
                  ),
                  Text("Option 3"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
