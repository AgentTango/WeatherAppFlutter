import 'package:flutter/material.dart';

import '../model/weather.dart';
import '../widgets/value_tile.dart';

/// Renders Weather Icon, current, min and max temperatures
class CurrentConditions extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.wb_sunny,
          color: Colors.black,
          size: 70,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '35°',
          style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.w100,
              color: Colors.black),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ValueTile("max",
              '40°'),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Center(
                child: Container(
                  width: 1,
                  height: 30,
                  color:
                  Colors.white10,
                )),
          ),
          ValueTile("min",
              '30°'),
        ]),
      ],
    );
  }
}
