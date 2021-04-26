import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/widgets/app_bar/app_bar_widget.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button_widget.dart';
import 'package:dev_quiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 42, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: "Fácil",
                ),
                LevelButtonWidget(
                  label: "Médio",
                ),
                LevelButtonWidget(
                  label: "Difícil",
                ),
                LevelButtonWidget(
                  label: "Perito",
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  QuizCardWidget(
                      cardData: new CardData(
                          "Gerenciamento de Estado", AppImages.data, 3)),
                  QuizCardWidget(
                      cardData: new CardData(
                          "Construindo Interfaces", AppImages.laptop, 10)),
                  QuizCardWidget(
                      cardData: new CardData(
                          "Integração Nativa", AppImages.hierarchy, 9)),
                  QuizCardWidget(
                      cardData: new CardData(
                          "Widgets do Flutter", AppImages.blocks, 5)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
