import 'package:flutter/material.dart';

import '../model/weather.dart';
import '../widgets/forecast_horizontal_widget.dart';
import '../widgets/value_tile.dart';
import '../widgets/weather_swipe_pager.dart';
import 'package:intl/intl.dart';

class WeatherWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "CITYNAME",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 5,
                color: Colors.black,
                fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "DESC.",
            style: TextStyle(
                fontWeight: FontWeight.w100,
                letterSpacing: 5,
                fontSize: 15,
                color: Colors.black),
          ),
          WeatherSwipePager(),
          Padding(
            child: Divider(
              color:
              Colors.black26,
            ),
            padding: EdgeInsets.all(10),
          ),
          ForecastHorizontal(),
          Padding(
            child: Divider(
              color:
              Colors.black26,
            ),
            padding: EdgeInsets.all(10),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ValueTile("wind speed", '5 m/s'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: Container(
                    width: 1,
                    height: 30,
                    color: Colors.black26,
                  )),
            ),
            ValueTile(
                "sunrise",
                DateFormat('h:m a').format(DateTime.fromMillisecondsSinceEpoch(1000))),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: Container(
                    width: 1,
                    height: 30,
                    color: Colors.black26,
                  )),
            ),
            ValueTile(
                "sunset",
                DateFormat('h:m a').format(DateTime.fromMillisecondsSinceEpoch(1000))),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: Container(
                    width: 1,
                    height: 30,
                    color: Colors.black26,
                  )),
            ),
            ValueTile("humidity", '5%'),
          ]),
        ],
      ),
    );
  }
}
