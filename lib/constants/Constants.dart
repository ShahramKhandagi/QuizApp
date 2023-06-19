import 'package:flutter_quiz_application/data/Question.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

Color welcomeMainBackground = HexColor('#4185f2');
Color mainButtonBackground = HexColor('#CF5144');

List<Question>? getQuestionList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle =
      'ستاره شناسان دمای سطحی یک ستاره را بر چه اساسی تعیین میکنند؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 3;
  firstQuestion.answerList = [
    'بزرگی آن',
    'فاصله آن تا زمین',
    'مقدار نور آن',
    'رنگ آن'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle =
      'کدام مورد از مفاهیم فضایی زیر بزرگ‌تر است و حجم وسیع تری را در بر می‌گیرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 2;
  secondQuestion.answerList = [
    'سیاره مشتری',
    'خورشید',
    'صورت فلکی',
    'منظومه شمسی',
  ];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'حرکت انتقالی کدام سیاره از همه کمتر است؟';
  thirdQuestion.imageNameNumber = '3';
  thirdQuestion.correctAnswer = 0;
  thirdQuestion.answerList = [
    'ناهید',
    'مریخ',
    'زمین',
    'مشتری',
  ];

  var forthQuestion = Question();
  forthQuestion.questionTitle = 'کدام سیاره جو و قمر ندارد؟';
  forthQuestion.imageNameNumber = '4';
  forthQuestion.correctAnswer = 1;
  forthQuestion.answerList = [
    'زهره',
    'عطارد',
    'مریخ',
    'نپتون',
  ];

  var fifthQuestion = Question();
  fifthQuestion.questionTitle =
      'برای ثبت دایره ای کامل از رد ستارگان بر روی کره ماه چه مدت نور دهی لازم است ؟';
  fifthQuestion.imageNameNumber = '5';
  fifthQuestion.correctAnswer = 0;
  fifthQuestion.answerList = [
    'یک شبانه روز',
    '3/27 شبانه روز',
    '5/14 شبانه روز',
    '5/29 شبانه روز',
  ];

  return [
    firstQuestion,
    secondQuestion,
    thirdQuestion,
    forthQuestion,
    fifthQuestion,
  ];
}
