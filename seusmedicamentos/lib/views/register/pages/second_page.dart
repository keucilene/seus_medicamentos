import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/views/home/home_page.dart';
import 'package:seusmedicamentos/views/register/components/continue_button_widget.dart';
import 'package:seusmedicamentos/views/register/components/dropdown_text_field_widget.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adicionar novo medicamento',
          style: AppTextStyles.title,
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownTextFieldWidget(heading: 'Qual o tipo de medicamento?'),
            ContinueButtonWidget(
              route: HomePage(),
            ),
          ],
        ),
      ),
    );
  }
}