import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardData {
  String title = "";
  String icon = "";
  int progressStep = 0;

  CardData(String title, String icon, int progressStep) {
    this.title = title;
    this.icon = icon;
    this.progressStep = progressStep;
  }
}

class QuizCardWidget extends StatelessWidget {
  final CardData cardData;
  QuizCardWidget({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(cardData.icon),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            cardData.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    cardData.progressStep.toString() + " de 10",
                    style: AppTextStyles.body11,
                  )),
              Expanded(
                flex: 1,
                child: LinearProgressIndicator(
                  value: 0.1 * cardData.progressStep,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
