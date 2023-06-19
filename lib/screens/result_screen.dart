import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/Constants.dart';
import 'package:flutter_quiz_application/screens/menu_screen.dart';

class ResultScreen extends StatelessWidget {
  final int resultAnswer;

  const ResultScreen({super.key, required this.resultAnswer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: welcomeMainBackground,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: welcomeMainBackground,
        title: Text(
          'نتیجه کوییز',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),
            resultPicture(),
            resultText(),
            Text(
              '$resultAnswer',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  color: resultNumberColor()),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(300, 40.0),
                elevation: 35,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuScreen(),
                  ),
                );
              },
              child: Text(
                'شروع مجدد بازی',
                style: TextStyle(
                  color: welcomeMainBackground,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Color? resultNumberColor() {
    if (resultAnswer == 5) {
      return Colors.lightGreen;
    } else if (resultAnswer < 5 && resultAnswer >= 2) {
      return Colors.yellowAccent;
    } else {
      return mainButtonBackground;
    }
  }

  Widget resultText() {
    if (resultAnswer == 5) {
      return Text(
        'بهترین نتیجه رو داری! ایول بهت',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[900],
        ),
        textAlign: TextAlign.center,
      );
    } else if (resultAnswer < 5 && resultAnswer >= 2) {
      return Text(
        'دفعه بعدی بیشتر مطالعه بکن',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[900],
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return Text(
        '!!! این چه وضعی بود دیگه',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[900],
        ),
        textAlign: TextAlign.center,
      );
    }
  }

  Widget resultPicture() {
    if (resultAnswer == 5) {
      return Image(
        image: AssetImage('images/amzing.png'),
        height: 200,
      );
    } else if (resultAnswer < 5 && resultAnswer >= 2) {
      return Image(
        image: AssetImage('images/good.png'),
        height: 200,
      );
    } else {
      return Image(
        image: AssetImage('images/bad.png'),
        height: 200,
      );
    }
  }
}
