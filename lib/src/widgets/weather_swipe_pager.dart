import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../model/weather.dart';
import '../widgets/current_conditions.dart';
import '../widgets/empty_widget.dart';
import 'package:fcharts/fcharts.dart';


class SimpleLineChart extends StatelessWidget {
  // X value -> Y value
  static const myData = [
    ["A", "A"],
    ["B", "B"],
    ["C", "C"],
    ["D", "B"],
    ["E", "C"],
    ["F", "C"],
    ["G", "A"],
  ];

  @override
  Widget build(BuildContext context) {
    return new LineChart(
      lines: [
        new Line<List<String>, String, String>(
          data: myData,
          xFn: (datum) => datum[0],
          yFn: (datum) => datum[1],
        ),
      ],
      chartPadding: new EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 30.0),
    );
  }
}



class WeatherSwipePager extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Swiper(
        itemCount: 2,
        index: 0,
        itemBuilder: (context, index) {
          if (index == 0) {
            return CurrentConditions();
          } else if (index == 1) {
            return SimpleLineChart();
          }
          return EmptyWidget();
        },
        pagination: new SwiperPagination(
            margin: new EdgeInsets.all(5.0),
            builder: new DotSwiperPaginationBuilder(
                size: 5,
                activeSize: 5,
                color: Colors.black12,
                activeColor:
                Colors.black)),
      ),
    );
  }
}

