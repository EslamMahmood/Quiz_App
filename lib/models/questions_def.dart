import 'questions.dart';
 List<Question> questions = <Question>[
  Question(
    question: '1. During program development, software requirements specify',
    correctAnswerIndex: 1,
    options: [
      'a) How the program will accomplish the task',
      'b) What the task is that the program must perform',
      'c) How to divide the task into subtasks',
      'd) How to test the program when it is done',
    ],
  ),
  Question(
    question: '2. Of the following, if statements, which one correctly executes three instructions if the condition is true?',
    correctAnswerIndex: 3,
    options: [
      'a) If (x < 0) a = b * 2; y = x; z = a – y;',
      'b) { if (x < 0) a = b * 2; y = x; z = a – y; }',
      'c) If{ (x < 0) a = b * 2; y = x; z = a – y ; }',
      'd) If (x < 0) { a = b * 2; y = x; z = a – y; }',
    ],
  ),
  Question(
    question: '3. When building for iOS, Flutter is restricted to an ____ compilation strategy',
    correctAnswerIndex: 0,
    options: [
      'a) AOT (ahead-of-time)',
      'b) JIT (Just-in-time)',
      'c) Transcompilation',
      'd) Recompilation',
    ],
  ),
  Question(
    question: '4. What type of test can examine your code as a complete system?',
    correctAnswerIndex: 2,
    options: [
      'a) Unit tests',
      'b) Widget tests',
      'c) Integration tests',
      'd) All of the above',
    ],
  ),
  Question(
    question: '5. What is the key configuration file used when building a Flutter project?',
    correctAnswerIndex: 0,
    options: [
      'a) pubspec.yaml',
      'b) pubspec.xml',
      'c) config.html',
      'd) root.xml',
    ],
  ),
  Question(
    question: '6. What is a drawback of Flutter that might lead you to choose another solution?',
    correctAnswerIndex: 3,
    options: [
      'a) Non-native looking application UI',
      'b) Large application footprint',
      'c) A relatively unproven framework and language',
      'd) All of the above',
    ],
  ),
  Question(
    question: '7. What widget would you use for repeating content in Flutter?',
    correctAnswerIndex: 1,
    options: [
      'a) ExpandedView',
      'b) ListView',
      'c) Stack',
      'd) ArrayView',
    ],
  ),
 ];