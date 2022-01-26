import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_ui/screens/home_screen.dart';
import 'package:onboarding_ui/widget/button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  //Used to format the image display
  Widget buildImage(String path) => Center(child: Image.asset(path, width: 350,),);

  //Used to format the dots displayed at the bottom of the image
  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  //Used to format the page appearance
  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20,),
    descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'A reader lives a thousand lives',
            body: 'The man who never reads lives only one',
            image: buildImage('assets/ebook.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Featured Books',
            body: 'Available right at your fingertips',
            image: buildImage('assets/readingbook.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Simple UI',
            body: 'For enhanced reading experience',
            image: buildImage('assets/manthumbs.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Today a reader, tomorrow a leader',
            body: 'Start your journey',
            footer: ButtonWidget(
              text: 'Start Reading',
              onClicked: () =>goToHome(context),
            ),
            image: buildImage('assets/ebook.png'),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text(
          'Read',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        onDone: () => goToHome(context),
        showSkipButton: true,
        skip: Text('Skip'),
        onSkip: () =>goToHome(context),
        next: Icon(Icons.arrow_forward),
        dotsDecorator: getDotDecoration(),
        onChange: (index) => print('Page $index selected'),
        globalBackgroundColor: Colors.white,
        skipFlex: 0,
        nextFlex: 0,
      ),
    );
  }
}

//Creates a navigation route to the home screen
void goToHome(context) => Navigator.of(context).pushReplacement(
  MaterialPageRoute(builder: (_) => HomeScreen()),
);

