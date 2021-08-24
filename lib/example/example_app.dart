import 'package:flutter/material.dart';
import 'package:stack_percentage/stack_percentage.dart';

/// set center widget 50% inside stack
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}
class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        height: 300,
        width: 300,
        child: Stack(
          children: [
            PositionedDirectional(
              start: Percent.widgetHorizontalPosition(ratio: 50, widthChild: 100, widthParent: 300),
              top: Percent.widgetVerticalPosition(ratio: 50, heightChild: 100, heightParent: 300),
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
