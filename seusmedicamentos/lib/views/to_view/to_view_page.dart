import 'package:flutter/material.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/views/home/home_page.dart';
import 'package:seusmedicamentos/views/to_view/components/medicine_item_widget.dart';

class ToViewPage extends StatefulWidget {
  @override
  _ToViewPageState createState() => _ToViewPageState();
}

class _ToViewPageState extends State<ToViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de medicamentos',
          style: AppTextStyles.title,
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              borderRadius: BorderRadius.circular(25),
              child: MedicineItemWidget(),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              borderRadius: BorderRadius.circular(25),
              child: MedicineItemWidget(),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              borderRadius: BorderRadius.circular(25),
              child: MedicineItemWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
