import 'package:controle_producao/app/routes/routes_module.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RoutesModule(),
      debugShowCheckedModeBanner: false,
    );
  }
}
