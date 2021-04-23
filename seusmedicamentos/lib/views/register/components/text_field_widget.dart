import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';

class TextFieldWidget extends StatelessWidget {
  final String heading;
<<<<<<< HEAD
  final String hintTFW;

  const TextFieldWidget(
      {Key key, @required this.heading, @required this.hintTFW})
      : super(key: key);
=======

  const TextFieldWidget({Key key, @required this.heading}) : super(key: key);
>>>>>>> main

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
<<<<<<< HEAD
=======
      height: 110,
>>>>>>> main
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
<<<<<<< HEAD
          Container(
            margin: EdgeInsets.only(top: 15),
            child: new TextFormField(
              onSaved: (newValue) {
                print(newValue);
              },
              validator: (newValue) {
                if (newValue == null || newValue.trim().isEmpty) {
                  return 'INVÁLIDO! O campo não pode estar vazio.';
                }

                if (newValue.trim().length < 3) {
                  return 'INVÁLIDO! O campo não pode conter menos que 3 caracteres.';
                }

                return null;
              },
              style: AppTextStyles.body,
              decoration: new InputDecoration(
                border: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(70),
                  ),
                ),
                filled: true,
                hintStyle: AppTextStyles.bodyGrey,
                hintText: hintTFW,
                fillColor: AppColors.lightGrey,
              ),
=======
          new TextField(
            style: AppTextStyles.body,
            decoration: new InputDecoration(
              border: new UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(70),
                ),
              ),
              filled: true,
              hintStyle: AppTextStyles.bodyGrey,
              hintText: "Entre com o nome do medicamento",
              fillColor: AppColors.lightGrey,
>>>>>>> main
            ),
          ),
        ],
      ),
    );
  }
}
