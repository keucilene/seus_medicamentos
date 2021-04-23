import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:provider/provider.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/provider/medicines.dart';
=======
import 'package:seusmedicamentos/core/app_colors.dart';
>>>>>>> main
import 'package:seusmedicamentos/views/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ChangeNotifierProvider(
        create: (context) => Medicines(),
        child: MaterialApp(
        title: 'Seus Medicamentos',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppColors.white,
        ),
        home: HomePage(),
      ),
=======
    return MaterialApp(
      title: 'Seus Medicamentos',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.white,
      ),
      home: HomePage(),
>>>>>>> main
    );
  }
}
