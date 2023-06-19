import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/Constants.dart';
import 'package:flutter_quiz_application/data/Question.dart';
import 'package:flutter_quiz_application/screens/home_screen.dart';
import 'package:flutter_quiz_application/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int showenQuestionIndex = 0;

  Question? selectedQuestion;

  bool endButton = false;

  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionList()![showenQuestionIndex];

    String questionImageIndex =
        getQuestionList()![showenQuestionIndex].imageNameNumber!;

    String getQuestiosNumber =
        'سوال ${showenQuestionIndex + 1} از ${getQuestionList()!.length}';

    return Scaffold(
      backgroundColor: welcomeMainBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, top: 18),
                  child: InkWell(
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                      size: 30,
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
                ),
              ),
              Container(
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage(
                  'images/$questionImageIndex.png',
                ),
                height: 180,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18, left: 25),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    getQuestiosNumber,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
              Text(
                selectedQuestion!.questionTitle!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              ...List.generate(
                4,
                (index) => getOptionsItem(index),
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                visible: endButton,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: mainButtonBackground,
                    minimumSize: Size(320, 40.0),
                    elevation: 35,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          resultAnswer: correctAnswer,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'مشاهده نتایج کوییز',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 40,
          width: 100,
          color: Colors.white,
          child: Center(
            child: Text(
              selectedQuestion!.answerList![index],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: welcomeMainBackground,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
        } else {
          print('false');
        }
        setState(
          () {
            if (showenQuestionIndex < getQuestionList()!.length - 1) {
              showenQuestionIndex++;
            } else {
              endButton = true;
            }
          },
        );
      },
    );
  }
}
