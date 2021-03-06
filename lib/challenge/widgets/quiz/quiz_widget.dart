import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyles.heading,
            ),
            SizedBox(
              height: 24,
            ),
            AnswerWidget(
                isSelected: true,
                isRight: false,
                title:
                    "Possibilita a criação de aplicativos compilados nativamente"),
            AnswerWidget(
                title:
                    "Possibilita a criação de aplicativos compilados nativamente"),
            AnswerWidget(
                title:
                    "Possibilita a criação de aplicativos compilados nativamente"),
            AnswerWidget(
                title:
                    "Possibilita a criação de aplicativos compilados nativamente"),
          ],
        ),
      ),
    );
  }
}
