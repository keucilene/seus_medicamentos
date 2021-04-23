import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/provider/medicines.dart';
import 'package:seusmedicamentos/views/medication_list/components/medicine_item_widget.dart';

class MedicationListPage extends StatefulWidget {
  @override
  _MedicationListPageState createState() => _MedicationListPageState();
}

class _MedicationListPageState extends State<MedicationListPage> {
    @override
  Widget build(BuildContext context) {
    final Medicines medicines = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de medicamentos', style: AppTextStyles.title),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
        child: ListView.builder(
          itemCount: medicines.count,
          itemBuilder: (context, index) => MedicineItemWidget(medicines.byIndex(index)),
        ),
      ),
    );
  }
}
