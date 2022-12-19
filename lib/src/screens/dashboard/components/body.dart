import 'package:flutter/material.dart';
import 'package:shop/models/charts.model.dart';
import 'package:shop/src/utils/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late List<ChartModel> data;

  @override
  void initState() {
    super.initState();
    data = [
      ChartModel(2, 21500),
      ChartModel(3, 27820),
      ChartModel(4, 23929),
      ChartModel(5, 23929),
      ChartModel(6, 26927),
      ChartModel(7, 30929),
      ChartModel(8, 33249),
      ChartModel(9, 39827),
      ChartModel(10, 42183),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Shoes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/jordan-1-mid.png'),
          radius: 36.0,
        ),
        SizedBox(height: 10),
        Text(
          'Jordan',
          style: TextStyle(color: Colors.white12, fontSize: 20),
        ),
        _chart(),
        SizedBox(height: 40),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(16),
            side: BorderSide(color: yChartAccentColor, width: 1.0),
          ),
          icon: Icon(Icons.download_rounded, color: yChartAccentColor),
          label: Text(
            'Export',
            style: TextStyle(
              color: yChartAccentColor,
              fontSize: 18,
            ),
          ),
          onPressed: () => print('Number'),
        ),
      ],
    );
  }

  Center _chart() {
    return Center(
      child: SfCartesianChart(
        margin: EdgeInsets.all(0),
        borderWidth: 0,
        borderColor: Colors.transparent,
        plotAreaBorderWidth: 0,
        primaryXAxis: NumericAxis(
          isVisible: false,
          interval: 1000,
          borderWidth: 0,
          borderColor: Colors.transparent,
        ),
        primaryYAxis: NumericAxis(
          isVisible: false,
          interval: 1000,
          borderWidth: 0,
          borderColor: Colors.transparent,
        ),
        series: <ChartSeries<ChartModel, int>>[
          SplineAreaSeries(
            dataSource: data,
            xValueMapper: (ChartModel data, _) => data.day,
            yValueMapper: (ChartModel data, _) => data.price,
            splineType: SplineType.natural,
            gradient: LinearGradient(
              colors: [
                yChartSplineColor,
                yChartBgColor.withAlpha(150),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          SplineSeries(
            color: yChartAccentColor,
            width: 4,
            markerSettings: MarkerSettings(
              color: yChartSplineColor,
              shape: DataMarkerType.diamond,
              borderWidth: 3,
              isVisible: true,
              borderColor: yChartSplineColor,
            ),
            dataSource: data,
            xValueMapper: (ChartModel data, _) => data.day,
            yValueMapper: (ChartModel data, _) => data.price,
          ),
        ],
      ),
    );
  }
}
