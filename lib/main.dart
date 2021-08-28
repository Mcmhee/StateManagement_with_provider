import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_implementation/counter.dart';
import 'package:provider_implementation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Counter(),
          builder: (context, child) {
            return MaterialApp(
              title: 'Provider',
              theme: ThemeData(
                primarySwatch: Colors.lightBlue,
              ),
              home: Home(),
            );
          },
        ),
      ],
    );
  }
}
