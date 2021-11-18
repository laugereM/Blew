import 'package:flutter/material.dart';

import '../widgets/view_widget.dart';

import '../utility/web_service.dart';

import '../../main.dart';

class ListWidget extends StatefulWidget {
  final YoudayObject object;

  const ListWidget({Key? key, required this.object}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListWidgetState(object: object);
}

class _ListWidgetState extends State<ListWidget> {
  final YoudayObject object;

  _ListWidgetState({required this.object});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(object.name),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: object.records.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ViewWidget(record: object.records[index]))),
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                height: 75,
                child: Text(
                  object.records[index].text,
                  style: const TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
