import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';

class MedicineItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      margin: EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tylenol',
                style: AppTextStyles.heading,
              ),
              Text.rich(
                TextSpan(
                  text: 'Comprimidos Revestidos',
                  style: AppTextStyles.bodyGrey,
                  children: [
                    TextSpan(
                      text: ' | ',
                      style: AppTextStyles.bodyGrey,
                    ),
                    TextSpan(
                      text: '750mg',
                      style: AppTextStyles.bodyGrey,
                    ),
                    TextSpan(
                      text: ' | ',
                      style: AppTextStyles.bodyGrey,
                    ),
                    TextSpan(
                      text: '8h/8h',
                      style: AppTextStyles.bodyGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_sharp,
            size: 18,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
