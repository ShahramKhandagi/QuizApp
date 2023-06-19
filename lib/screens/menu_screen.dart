import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/Constants.dart';
import 'package:flutter_quiz_application/screens/home_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      color: welcomeMainBackground,
                      size: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.stars,
                      color: welcomeMainBackground,
                      size: 35,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 5),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Text(
                      '...سطح بازی تو انتخاب بکن بریم',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: mainButtonBackground,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 5),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: Text(
                      '!ببینم چند مرده حلاجی',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                child: Image(
                  image: AssetImage('images/component1.png'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 5,
              ),
              Image(
                image: AssetImage('images/component2.png'),
              ),
              SizedBox(
                height: 25,
              ),
              Image(
                image: AssetImage('images/component3.png'),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
