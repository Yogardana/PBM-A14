import 'package:coffeestore/constans.dart';
import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoretion(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Palette.bg1, Palette.bg2]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(
                child: new Image.asset(
                  "assets/coffee.png",
                  height: 90.0,
                  width: 270.0,
                ),
              ),
            ],
          ),
        )
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
        );
  }

  BoxDecoretion(
      {BorderRadius? borderRadius,
      List<BoxShadow>? boxShadow,
      LinearGradient? gradient}) {}
}
