import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

/**
 * http://10.99.17.134:8080/web/
 */
class ProviderTestPage02 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ProviderTestPage02();
}

class _ProviderTestPage02 extends State<ProviderTestPage02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Consumer(
              builder: (context, CounterModel counter, child) =>
                  Text("${counter.value}")),
          Consumer(
              builder: (context, CounterModel counter, child) =>
                  ElevatedButton(onPressed: () {
                    counter.increment();
                  }, child: Text("+1"))),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("返回上一页"),
          )
        ],
      ),
    );
  }
}
