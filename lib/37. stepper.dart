import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Playground")),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _currentStep,
        onStepContinue: _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
        onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
        steps: const [
          Step(
            title: Text("Get Ready"),
            isActive: true,
            content: Text("Let's begin..."),
          ),
          Step(
            title: Text("Get Set"),
            isActive: true,
            content: Text("Ok, just a little more..."),
          ),
          Step(
            title: Text("Go!"),
            isActive: true,
            content: Text("And, we're done!"),
          )
        ],
      ),
    );
  }
}
