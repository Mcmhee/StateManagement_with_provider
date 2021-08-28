import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_implementation/counter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Click Counter ${value.count}",
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Text(
            "Corrent counter is ${value.count}",
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.increase();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
