import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/views/register/components/continue_button_widget.dart';
import 'package:seusmedicamentos/views/register/components/text_field_widget.dart';
import 'package:seusmedicamentos/views/register/pages/second_page.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterFirstPage> {
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
            TextFieldWidget(
              heading: 'Qual o nome do medicamento?',
            ),
            ContinueButtonWidget(
              route: SecondPage(),
            ),
          ],
        ),
      ),
    );
  }
}
