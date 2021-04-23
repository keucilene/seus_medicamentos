import 'package:seusmedicamentos/models/medicine.dart';

const DUMMY_MEDICINES = {
  '1': const Medicine (
    id: '1',
    name: 'Tylenol',
    typeMedicine: 'Comprimidos Revestidos',
    medicineMeasurement: '750mg',
    timeInterval: '8h/8h',
  ),
  '2': const Medicine (
    id: '2',
    name: 'Amoxicilina',
    typeMedicine: 'Suspenção Oral',
    medicineMeasurement: '250mg/5ml',
    timeInterval: '12h/12h',
  ),
  '3': const Medicine (
    id: '3',
    name: 'Paracetamol',
    typeMedicine: 'Comprimidos',
    medicineMeasurement: '750mg',
    timeInterval: '6h/6h',
  ),
  '4': const Medicine (
    id: '4',
    name: 'Dramin Capsgel',
    typeMedicine: 'Cápsulas Moles',
    medicineMeasurement: '50mg',
    timeInterval: '6h/6h',
  ),
};
