import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tab_cash_orange/core/utils/hex_color.dart';


class DonutChartExample extends StatelessWidget {
  // final List<Map<String, dynamic>> expenses = [
  //   {'category': 'Food', 'amount': 100.0},
  //   {'category': 'Entertainment', 'amount': 50.0},
  //   {'category': 'Travel', 'amount': 150.0},
  //   {'category': 'Shopping', 'amount': 75.0},
  // ];
   
    var _totalExpenses = 2000; // replace with actual total expenses
    var _maxExpenses = 5000; // replace with max expenses
    var data = [
      _ChartData('David', 500),
      _ChartData('Steve', 750),
      _ChartData('Jack', 1000),
      _ChartData('Others', 750)
    ];
    var _tooltip = TooltipBehavior(enable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donut Chart Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: SfCircularChart(
                tooltipBehavior: _tooltip,
                
                series: [
                  DoughnutSeries<_ChartData, String>(
                    
                    dataSource: data,
                    innerRadius: '110',
                    xValueMapper: (_ChartData data, _) => data.x,
                    yValueMapper: (_ChartData data, _) => data.y,
                    name: 'Expenses',
                    
                    strokeWidth: 100, // width of the donut
                    emptyPointSettings: EmptyPointSettings(
                      color: Colors.white, // make the center of the donut white
                    ),
                  )
                ],
                annotations: [
                  // display the total expenses in the center of the donut
                  CircularChartAnnotation(
                    widget : Center(
                    child: Column(
                      children: [
                        Text(
                          '\$$_totalExpenses',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'May' ,
                          style: TextStyle(
                            color: HexColor('#454459'),
                            
                          ),
                        )
                      ],
                    ),
                  
                  )
                  
                  ),
                  
              ],
              ),
            ),
            SizedBox(height: 20),
            Text('Max Expenses: \$$_maxExpenses'),
          ],
        ),
      ),
    );
  }
}

class DonutChartPainter extends CustomPainter {
  final List<Map<String, dynamic>> expenses;
  final Color backgroundColor;
  final Color progressColor;

  DonutChartPainter(this.expenses, this.backgroundColor, this.progressColor);

  @override
  void paint(Canvas canvas, Size size) {
    double total = 0;
    expenses.forEach((expense) => total += expense['amount']);
    double percentage = total / 100;
    double progressAngle = 2 * pi * percentage;
    double strokeWidth = size.width / 2 * 0.3;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final startAngle = -pi / 2;
    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(rect, startAngle, progressAngle, false, progressPaint);
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth * 0.7;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2 - strokeWidth / 2, backgroundPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}



 


