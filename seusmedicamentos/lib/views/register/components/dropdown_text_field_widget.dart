import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';

class DropdownTextFieldWidget extends StatelessWidget {
  final String heading;

  const DropdownTextFieldWidget({Key key, @required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 110,
      margin: EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: AppTextStyles.heading,
          ),
          DropdownButtonFormField(items: [],
            
          ),
        ],
      ),
    );
  }
}
