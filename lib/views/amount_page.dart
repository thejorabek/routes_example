import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home/routes/router.dart';
import 'package:home/views/balance.dart';
import 'package:home/views/send_page.dart';
import 'package:home/views/transactions_page.dart';

final amountCon = TextEditingController();

class AmountPage extends StatelessWidget {
  const AmountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Amount',
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          ),
          SizedBox(
              width: 150,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                controller: amountCon,
              )),
          const SizedBox(height: 30),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRouter.send);
                  },
                  child: const Text('Cancel')),
              const SizedBox(width: 20),
              ElevatedButton(
                  onPressed: () {
                    if (amountCon.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Enter the amount",
                        toastLength: Toast.LENGTH_SHORT,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } else {
                      if (balance - int.parse(amountCon.text) > 0) {
                        balance = balance - int.parse(amountCon.text);
                        transactions.add({nameCon.text: amountCon.text});
                        Navigator.pushReplacementNamed(context, MyRouter.confirm, arguments: amountCon.text);
                        nameCon.clear();
                        amountCon.clear();
                      } else {
                        Fluttertoast.showToast(
                          msg: "Not enough money in balance",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      }
                    }
                  },
                  child: const Text('Next')),
            ],
          )
        ],
      )),
    );
  }
}
