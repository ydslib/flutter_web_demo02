import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/page/counter_model.dart';
import 'package:flutter_demo/route_table.dart';
import 'package:provider/provider.dart';

class ProviderTestPage01 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ProviderTestPage01();
}

class _ProviderTestPage01 extends State<ProviderTestPage01> {
  @override
  Widget build(BuildContext context) {

    final _counter = Provider.of<CounterModel>(context);
    final _textSize = Provider.of<int>(context).toDouble();

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("${_counter.value}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouterPath.PROVDIDER_TEST_PAGE02);
                },
                child: Text("跳转到ProviderTestPage02"))
          ],
        ),
      ),
    );
  }
}
