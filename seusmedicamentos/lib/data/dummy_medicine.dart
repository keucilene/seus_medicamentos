import 'package:seusmedicamentos/models/medicine.dart';

const DUMMY_MEDICINE = {
  '1': const Medicine (
    id: '1',
    name: 'Tylenol',
    typeMedicine: 'Comprimidos Revestidos',
    medicineMeasurement: '750mg',
    dailyDoses: '3',
    doseQuantity: '1',
    timeInterval: '8',
    usageTime: 'Enquanto tiver medicamento',
  ),
  '2': const Medicine (
    id: '2',
    name: 'Amoxicilina',
    typeMedicine: 'Suspenção Oral',
    medicineMeasurement: '250mg/5ml',
    dailyDoses: '2',
    doseQuantity: '2',
    timeInterval: '12',
    usageTime: 'Enquanto tiver medicamento',
  ),
};
