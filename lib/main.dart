import 'package:flutter/material.dart';
import 'package:flutter_demo/page/counter_model.dart';
import 'package:flutter_demo/page/home_page.dart';
import 'package:flutter_demo/page/provider_test_page01.dart';
import 'package:flutter_demo/route_table.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'dart:js' as js;

void main() {
  final counter = CounterModel();
  final textSize = 48;
  runApp(Provider<int>.value(
    value: textSize,
    child: ChangeNotifierProvider.value(
      value: counter,
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var result = js.context.callMethod("flutterGetJs",["123"]);
    Fluttertoast.showToast(msg: result);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'default',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ProviderTestPage01(),
      routes: routeTable,
    );
  }
}
