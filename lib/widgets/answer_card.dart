import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.question,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String question;
  final bool isSelected;
  final int currentIndex;
  final int? selectedAnswerIndex;
  final int? correctAnswerIndex;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: selectedAnswerIndex != null
          ? Container(
              height: 70,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                
                  color: isCorrectAnswer
                      ? Colors.green
                      : isWrongAnswer
                          ? Colors.red
                          : Colors.white,
                
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      question,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(width: 10),
                  isCorrectAnswer
                      ? buildCorrectIcon()
                      : isWrongAnswer
                          ? buildWrongIcon()
                          : const SizedBox.shrink(),
                ],
              ),
            )
          : Container(
              height: 70,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white24),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      question,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget buildCorrectIcon() => const CircleAvatar(
        radius: 15,
        backgroundColor: Color.fromARGB(255, 26, 147, 30),
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      );

  Widget buildWrongIcon() => const CircleAvatar(
        radius: 15,
        backgroundColor: Color.fromARGB(255, 203, 39, 27),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
      );
}
