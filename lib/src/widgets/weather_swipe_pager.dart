import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../model/weather.dart';
import '../widgets/current_conditions.dart';
import '../widgets/empty_widget.dart';


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
            return Text("Line Chart");
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

