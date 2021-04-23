import 'package:flutter/material.dart';

class Medicine {
  final String id;
  final String name; // nome
  final String typeMedicine; // tipo de medicamento (comprimido, xarope...)
  final String medicineMeasurement; // medida do medicamento
<<<<<<< HEAD
  final String timeInterval; // intervalo de tempo entre uma dose e outra
=======
  final String dailyDoses; // quantidade de doses por dia
  final String doseQuantity; // quantidade de medicamento por dose
  final String timeInterval; // intervalo de tempo entre uma dose e outra
  final String usageTime; // por quanto tempo deve tomar
>>>>>>> main

  const Medicine({
    this.id, 
    @required this.name, 
    @required this.typeMedicine, 
    @required this.medicineMeasurement, 
<<<<<<< HEAD
    @required this.timeInterval, 
=======
    @required this.dailyDoses, 
    @required this.doseQuantity, 
    @required this.timeInterval, 
    @required this.usageTime,
>>>>>>> main
  });
}
