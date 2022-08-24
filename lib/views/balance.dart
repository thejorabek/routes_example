import 'package:flutter/material.dart';

double balance = 5000;

class BalancePage extends StatelessWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        '\$ $balance',
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      )),
    );
  }
}
