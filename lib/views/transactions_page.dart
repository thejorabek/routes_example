import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: transactions.isEmpty
          ? const Center(
              child: Text(
                'No transactions',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            transactions[index].keys.single,
                            style: const TextStyle(fontSize: 25),
                          ),
                          const SizedBox(width: 50),
                          Text(
                            '\$' + transactions[index].values.single,
                            style: const TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }),
    );
  }
}

List<Map<String, dynamic>> transactions = [];
