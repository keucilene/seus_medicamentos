import 'dart:math';

import 'package:flutter/material.dart';
import 'package:seusmedicamentos/data/dummy_medicines.dart';
import 'package:seusmedicamentos/models/medicine.dart';

class Medicines with ChangeNotifier {
  final Map<String, Medicine> _items = {...DUMMY_MEDICINES};

  List<Medicine> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Medicine byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Medicine medicine) {
    if (medicine == null) {
      return;
    }

    if (medicine.id != null &&
        medicine.id.trim().isNotEmpty &&
        _items.containsKey(medicine.id)) {
      _items.update(medicine.id, (_) => medicine);
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Medicine(
          id: id,
          name: medicine.name,
          typeMedicine: medicine.typeMedicine,
          medicineMeasurement: medicine.medicineMeasurement,
          timeInterval: medicine.timeInterval,
        ),
      );
    }

    notifyListeners();
  }

  void remove(Medicine medicine) {
    if (medicine != null && medicine.id !=null) {
      _items.remove(medicine.id);
      notifyListeners();
    }
  }
}
