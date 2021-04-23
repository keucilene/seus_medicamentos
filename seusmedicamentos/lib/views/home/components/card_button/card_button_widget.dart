import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';

class CardButtonWidget extends StatelessWidget {
  final String heading;
  final String icon;

  const CardButtonWidget({Key key, @required this.heading, @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            blurRadius: 2,
            spreadRadius: 0,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon == 'Visualizar' ? Icons.work : Icons.medical_services,
            size: 36,
            color: AppColors.black,
          ),
          Text(
              heading,
              style: AppTextStyles.heading,
            ),
        ],
      ),
    );
  }
}
