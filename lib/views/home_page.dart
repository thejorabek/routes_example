import 'package:flutter/material.dart';
import 'package:home/routes/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRouter.transactions);
              },
              child: const Text('View Transictions')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRouter.send);
              },
              child: const Text('Send Money')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRouter.balance);
              },
              child: const Text('View Balance')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRouter.paint);
              },
              child: const Text('Paint'))
        ]),
      ),
    );
  }
}
