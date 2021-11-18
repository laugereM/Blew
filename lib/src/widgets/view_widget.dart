import 'package:flutter/material.dart';

import '../utility/web_service.dart';

class ViewWidget extends StatefulWidget {
  final YoudayRecord record;

  const ViewWidget({Key? key, required this.record}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ViewWidgetState(record: record);
}

class _ViewWidgetState extends State<ViewWidget> {
  final YoudayRecord record;
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  _ViewWidgetState({required this.record});

  @override
  Widget build(BuildContext context) {
    List<TextFormField> fieldsForm = <TextFormField>[];

    for (YoudayField field in record.fields) {
      fieldsForm.add(TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: '',
          labelText: field.label,
        ),
        onChanged: (value) {
          setState(() {
            title = value;
          });
        },
        readOnly: true,
        initialValue: field.value,
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Object'),
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: Align(
            alignment: Alignment.topCenter,
            child: Card(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: fieldsForm,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
