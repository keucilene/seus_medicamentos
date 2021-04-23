import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seusmedicamentos/core/app_colors.dart';
import 'package:seusmedicamentos/core/app_text_styles.dart';
import 'package:seusmedicamentos/models/medicine.dart';
import 'package:seusmedicamentos/provider/medicines.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final _form = GlobalKey<FormState>();
    final Map<String, String> _formData = {};

    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar novo medicamento', style: AppTextStyles.title),
        actions: [
          IconButton(
            icon: Icon(Icons.save_rounded),
            onPressed: () {
              final _isValid = _form.currentState.validate();

              if (_isValid) {
                _form.currentState.save();

                Provider.of<Medicines>(context, listen: false).put(
                  Medicine(
                    id: _formData['id'],
                    name: _formData['name'],
                    typeMedicine: _formData['typeMedicine'],
                    medicineMeasurement: _formData['medicineMeasurement'],
                    timeInterval: _formData['timeInterval'],
                  ),
                );

                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              Container(
                width: 354,
                margin: EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual o nome do medicamento?',
                      style: AppTextStyles.heading,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: new TextFormField(
                        onSaved: (newValue) => _formData['name'] = newValue,
                        validator: (newValue) {
                          if (newValue == null || newValue.trim().isEmpty) {
                            return 'INVÁLIDO! O campo não pode estar vazio.';
                          }

                          if (newValue.trim().length < 3) {
                            return 'INVÁLIDO! O campo não pode conter menos que 3 caracteres.';
                          }

                          return null;
                        },
                        style: AppTextStyles.body,
                        decoration: new InputDecoration(
                          border: new UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(70),
                            ),
                          ),
                          filled: true,
                          hintStyle: AppTextStyles.bodyGrey,
                          hintText: 'Entre com o nome do medicamento',
                          fillColor: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 354,
                margin: EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual o tipo do medicamento?',
                      style: AppTextStyles.heading,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: new TextFormField(
                        onSaved: (newValue) =>
                            _formData['typeMedicine'] = newValue,
                        validator: (newValue) {
                          if (newValue == null || newValue.trim().isEmpty) {
                            return 'INVÁLIDO! O campo não pode estar vazio.';
                          }

                          if (newValue.trim().length < 3) {
                            return 'INVÁLIDO! O campo não pode conter menos que 3 caracteres.';
                          }

                          return null;
                        },
                        style: AppTextStyles.body,
                        decoration: new InputDecoration(
                          border: new UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(70),
                            ),
                          ),
                          filled: true,
                          hintStyle: AppTextStyles.bodyGrey,
                          hintText: 'Entre com o tipo do medicamento',
                          fillColor: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 354,
                margin: EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual é a medida do medicamento?',
                      style: AppTextStyles.heading,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: new TextFormField(
                        onSaved: (newValue) =>
                            _formData['medicineMeasurement'] = newValue,
                        validator: (newValue) {
                          if (newValue == null || newValue.trim().isEmpty) {
                            return 'INVÁLIDO! O campo não pode estar vazio.';
                          }

                          if (newValue.trim().length < 3) {
                            return 'INVÁLIDO! O campo não pode conter menos que 3 caracteres.';
                          }

                          return null;
                        },
                        style: AppTextStyles.body,
                        decoration: new InputDecoration(
                          border: new UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(70),
                            ),
                          ),
                          filled: true,
                          hintStyle: AppTextStyles.bodyGrey,
                          hintText: 'Entre com a medida do medicamento',
                          fillColor: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 354,
                margin: EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual é o intervalo de tempo entre as doses?',
                      style: AppTextStyles.heading,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: new TextFormField(
                        onSaved: (newValue) =>
                            _formData['timeInterval'] = newValue,
                        validator: (newValue) {
                          if (newValue == null || newValue.trim().isEmpty) {
                            return 'INVÁLIDO! O campo não pode estar vazio.';
                          }

                          if (newValue.trim().length < 3) {
                            return 'INVÁLIDO! O campo não pode conter menos que 3 caracteres.';
                          }

                          return null;
                        },
                        style: AppTextStyles.body,
                        decoration: new InputDecoration(
                          border: new UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(70),
                            ),
                          ),
                          filled: true,
                          hintStyle: AppTextStyles.bodyGrey,
                          hintText:
                              'Entre com o intervalo de tempo entre as doses',
                          fillColor: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
