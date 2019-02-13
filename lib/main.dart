import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text('Single-resolution image with no size specified renders at its default size (40x40)',
              textAlign: TextAlign.center,
            ),
            Image.asset('images/border.png',
              fit: BoxFit.fill,
            ),
            Spacer(),
            Text('Single-resolution image with a size specified (300x60) stretches',
              textAlign: TextAlign.center,
            ),
            Image.asset('images/border.png',
              fit: BoxFit.fill,
              width: 300,
              height: 60,
            ),
            Spacer(),
            Text('Single-resolution image with a size specified (300x60) and centerSlice is resized properly',
              textAlign: TextAlign.center,
            ),
            Image.asset('images/border.png',
              fit: BoxFit.fill,
              width: 300,
              height: 60,
              centerSlice: Rect.fromLTRB(19, 19, 21, 21),
            ),
            Spacer(),
            Text('Resolution-aware image with no size specified uses higher resolution version (80x80), but renders at the size of the main asset (40x40)',
              textAlign: TextAlign.center,
            ),
            Image.asset('images/border_multi.png',
              fit: BoxFit.fill,
            ),
            Spacer(),
            Text('Resolution-aware image with size specified (300x60) stretches',
              textAlign: TextAlign.center,
            ),
            Image.asset('images/border_multi.png',
              fit: BoxFit.fill,
              width: 300,
              height: 60,
            ),
            Spacer(),
            Text('Resolution-aware image with size specified (300x60) and centerSlice causes exception',
              textAlign: TextAlign.center,
            ),
            Image.asset('images/border_multi.png',
              fit: BoxFit.fill,
              width: 300,
              height: 60,
              centerSlice: Rect.fromLTRB(19, 19, 21, 21),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
