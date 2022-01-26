import 'package:flutter/material.dart';
import 'package:onboarding_ui/main.dart';
import 'package:onboarding_ui/screens/onboarding_screen.dart';
import 'package:onboarding_ui/widget/button_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HomePage',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24,),
            ButtonWidget(text: 'Go Back', onClicked: () => goToOnBoarding(context)),
          ],
        ),
      ),
    );
  }
}

  //Creates a navigation route back to the onboarding screen
  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => OnboardingScreen()),
  );
