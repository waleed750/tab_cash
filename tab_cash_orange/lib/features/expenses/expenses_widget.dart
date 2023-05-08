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
   
    int totalExpenses ; // replace with actual total expenses
    int maxExpenses ;
    String montySelected;
    DonutChartExample({
      this.totalExpenses = 2000, 
      this.maxExpenses = 7000 , 
      required this.montySelected,
    }); // replace with max expenses
    var data = [
      _ChartData('Shopping', 500),
      _ChartData('Send to card', 750),
      _ChartData('Payments of Bills', 1000),
      _ChartData('ATM withdrawal', 750),
      _ChartData('Games', 750),
      _ChartData('Others', 750),


    ];
    var _tooltip = TooltipBehavior(enable: true);
  @override
  Widget build(BuildContext context) {
    
    return  Center(
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
                    pointColorMapper: (_ChartData data, _) {
                    if (data.x == 'Shopping') {
                      return HexColor('FD95D3'); // set the color for Shooping's slice
                    } else if (data.x == 'Send to card') {
                      return HexColor('7AD3FF'); // set the color for Send to card's slice
                    } else if (data.x == 'Games') {
                      return HexColor('FE6C6C'); // set the color for Games's slice
                    } else if (data.x == 'Payments of Bills') {
                      return HexColor('FDCD95'); // set the color for Games's slice
                    }else if (data.x == 'ATM withdrawal') {
                      return HexColor('FFF972'); // set the color for Games's slice
                    } else {
                      return HexColor('99FFA3'); // set the color for Others' slice
                    }
                  },
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
                          '\$$totalExpenses',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$montySelected' ,
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
            SizedBox(height: 30),
            Text('Max Expenses: \$$maxExpenses'),
          ],
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



 


