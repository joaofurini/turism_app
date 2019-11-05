import 'package:flutter/material.dart';
import './text_section.dart';

class LocationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextSection(Colors.green),
            TextSection(Colors.red),
            TextSection(Colors.blue)
          ],
        ));
  }
}
