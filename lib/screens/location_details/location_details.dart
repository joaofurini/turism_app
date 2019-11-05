import 'package:flutter/material.dart';
import './text_section.dart';
import './image_banner.dart';

class LocationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Location Details'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner("assets/images/kiyomizu-dera.jpg"),
            TextSection(
                'Summary', 'ahsdfiahsdfiuhasidfuhaisdufhiaudshaidsufhasdfiuh'),
            TextSection('Sumary', 'somethin2'),
            TextSection('Sumary', 'something3')
          ],
        ));
  }
}
