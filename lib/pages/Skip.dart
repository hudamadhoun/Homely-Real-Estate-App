import 'package:aqarat/ButtonWidget.dart';
import 'package:aqarat/pages/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class skip extends StatelessWidget {
  const skip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'سهولة البحث',
          body: 'يساعدك تطبيق هوملي للبحث  على '
           'العقار المناسب  بسرعةعالية مما يؤدي '
          'إلى تسهيل عملية البحث .',
          image: buildImage('assets/images/skip1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'توفير الوقت ',
          body: 'يساعدك تطبيق هوملي للحصول على  '
              'العقار المناسب  بسرعةعالية مما يؤدي  '
              'إلى توفير الوقت والجهد.',
          image: buildImage('assets/images/skip2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'الدعم الكامل ',
          body: 'يساعدك تطبيق هوملي للحصول على  '
              'الدعم الكامل والمساعدة في التطبيق. ',
          // footer: ButtonWidget(
          //   onClicked: () => goToHome(context),
          //   text: 'التالي',
          //
          // ),

          image: buildImage('assets/images/skip3.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text('متابعة', style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff012468))),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('تخطي',style: TextStyle(color: Color(0xff012468)),),
      onSkip: () => goToHome(context),
      next: Icon(Icons.arrow_forward,color: Color(0xff012468),),
      dotsDecorator: getDotDecoration(),
      globalBackgroundColor: Theme.of(context).primaryColor,
      dotsFlex: 0,
      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: false,
      // freeze: true,
      // animationDuration: 1000,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => welcome()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xf5012468),
    //activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );
}