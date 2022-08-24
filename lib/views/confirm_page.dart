import 'package:flutter/material.dart';
import 'package:home/views/amount_page.dart';

class ConfirmPage extends StatelessWidget {
  ConfirmPage({Key? key, required this.amount}) : super(key: key);

  String amount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '\$ $amount',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const Text(
            'was send',
            style: const TextStyle(fontSize: 25),
          )
        ],
      )),
    );
  }
}
