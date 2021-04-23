import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/models/medicine.dart';
import 'package:seusmedicamentos/provider/medicines.dart';

class MedicineItemWidget extends StatelessWidget {
  final Medicine medicine;

  const MedicineItemWidget(this.medicine);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                medicine.name,
                style: AppTextStyles.heading,
              ),
              Text.rich(
                TextSpan(
                  text: medicine.typeMedicine,
                  style: AppTextStyles.bodyGrey,
                  children: [
                    TextSpan(
                      text: ' | ',
                      style: AppTextStyles.bodyGrey,
                    ),
                    TextSpan(
                      text: medicine.medicineMeasurement,
                      style: AppTextStyles.bodyGrey,
                    ),
                    TextSpan(
                      text: ' | ',
                      style: AppTextStyles.bodyGrey,
                    ),
                    TextSpan(
                      text: medicine.timeInterval,
                      style: AppTextStyles.bodyGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.delete_rounded,
              color: AppColors.black,
              size: 18,
            ),
            onPressed: () {
              Provider.of<Medicines>(context, listen: false).remove(medicine);
            },
          ),
        ],
      ),
    );
  }
}
