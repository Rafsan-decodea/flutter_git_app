import 'package:flutter/material.dart';
import 'package:pmp/db/custom_field.dart';
import 'package:pmp/pmp/app.dart';

class CustomFieldButton extends StatelessWidget {
  final CustomField customField;

  const CustomFieldButton({Key? key, required this.customField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RecordButton(
      title: customField.title,
      value: customField.value,
      obscureValue: customField.obscured,
      isPassword: customField.fieldType == FieldType.password,
    );
  }
}
