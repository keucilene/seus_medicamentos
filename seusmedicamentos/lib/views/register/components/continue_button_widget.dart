import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';

class ContinueButtonWidget extends StatelessWidget {
  final Widget route;

  const ContinueButtonWidget({Key key, @required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => route));
      },
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 47,
        width: 354,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            'Continuar',
            style: AppTextStyles.headingGrey,
          ),
        ),
      ),
    );
  }
}
