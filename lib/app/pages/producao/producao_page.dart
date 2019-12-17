import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ProducaoPage extends StatefulWidget {
  final String title;
  const ProducaoPage({Key key, this.title = "Producao"}) : super(key: key);

  @override
  _ProducaoPageState createState() => _ProducaoPageState();
}

class _ProducaoPageState extends State<ProducaoPage> {
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Produção"),
        centerTitle: true,
      ),
      body: Container(
        child: charts.LineChart(_seriesLineData,
            defaultRenderer:
                charts.LineRendererConfig(includeArea: true, stacked: true),
            animate: true,
            animationDuration: Duration(milliseconds: 500),
            behaviors: [
              charts.ChartTitle('Years',
                  behaviorPosition: charts.BehaviorPosition.bottom,
                  titleOutsideJustification:
                      charts.OutsideJustification.middleDrawArea),
              charts.ChartTitle('Sales',
                  behaviorPosition: charts.BehaviorPosition.start,
                  titleOutsideJustification:
                      charts.OutsideJustification.middleDrawArea),
              charts.ChartTitle(
                'Departments',
                behaviorPosition: charts.BehaviorPosition.end,
                titleOutsideJustification:
                    charts.OutsideJustification.middleDrawArea,
              )
            ]),
      ),
    );
  }
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
