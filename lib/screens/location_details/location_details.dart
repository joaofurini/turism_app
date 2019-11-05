import 'package:flutter/material.dart';
import 'package:turismapp/screens/locations/tile_overlay.dart';
import './text_section.dart';
import '../../widgets/image_banner.dart';
import '../../models/location.dart';
import '../../widgets/location_tile.dart';

class LocationDetails extends StatelessWidget {
  final int _locationID;

  LocationDetails(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ImageBanner(path: location.imagePath),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: LocationTile(location: location),
              )
            ]..addAll(textSections(location)),
          ),
        ));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
