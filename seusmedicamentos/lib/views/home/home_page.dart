import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/views/home/components/card_button/card_button_widget.dart';
import 'package:seusmedicamentos/views/medication_list/medication_list_page.dart';
import 'package:seusmedicamentos/views/register/register_page.dart';
=======
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/views/home/components/card_button/card_button_widget.dart';
import 'package:seusmedicamentos/views/register/register_first_page.dart';
import 'package:seusmedicamentos/views/to_view/to_view_page.dart';
>>>>>>> main

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
        child: Column(
          children: [
            Text(
              'Seus Medicamentos',
              style: AppTextStyles.title,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Olá, ',
                      style: AppTextStyles.heading,
                      children: [
                        TextSpan(
                          text: 'Kéucy',
                          style: AppTextStyles.headingBold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
<<<<<<< HEAD
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/65924370?v=4',
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.lightGrey,
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(2, 2),
                          )
                        ]),
=======
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/65924370?v=4'),
                      ),
                    ),
>>>>>>> main
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 15,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
<<<<<<< HEAD
                          builder: (context) => MedicationListPage()));
=======
                          builder: (context) => ToViewPage()));
>>>>>>> main
                    },
                    borderRadius: BorderRadius.circular(25),
                    child: CardButtonWidget(
                        heading: 'Visualizar seus medicamentos',
                        icon: 'Visualizar'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
<<<<<<< HEAD
                          builder: (context) => RegisterPage()));
=======
                          builder: (context) => RegisterFirstPage()));
>>>>>>> main
                    },
                    borderRadius: BorderRadius.circular(25),
                    child: CardButtonWidget(
                      heading: 'Cadastrar novo medicamentos',
                      icon: 'Cadastrar',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
