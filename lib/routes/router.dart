import 'package:flutter/material.dart';
import 'package:home/views/amount_page.dart';
import 'package:home/views/balance.dart';
import 'package:home/views/confirm_page.dart';
import 'package:home/views/home_page.dart';
import 'package:home/views/paint.dart';
import 'package:home/views/send_page.dart';
import 'package:home/views/transactions_page.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case transactions:
        return MaterialPageRoute(builder: (context) => const TransactionsPage());
      case send:
        return MaterialPageRoute(builder: (context) => const SendPage());
      case balance:
        return MaterialPageRoute(builder: (context) => const BalancePage());
      case amount:
        return MaterialPageRoute(builder: (context) => const AmountPage());
      case paint:
        return MaterialPageRoute(builder: (context) => const PaintPage());
      case confirm:
        final args = settings.arguments as String;
        return MaterialPageRoute(
            builder: (context) => ConfirmPage(
                  amount: args,
                ));
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text('Route not found'),
                  ),
                ));
    }
  }

  static const String home = '/';
  static const String transactions = '/transactions';
  static const String send = '/send';
  static const String balance = '/balance';
  static const String amount = '/amount';
  static const String confirm = '/confirm';
  static const String paint = '/paint';
}
