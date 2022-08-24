import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home/routes/router.dart';
import 'package:home/views/transactions_page.dart';

final nameCon = TextEditingController();

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Reciption',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          SizedBox(
              width: 150,
              child: TextFormField(
                autofocus: true,
                controller: nameCon,
              )),
          const SizedBox(height: 30),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRouter.home);
                  },
                  child: const Text('Cancel')),
              const SizedBox(width: 20),
              ElevatedButton(
                  onPressed: () {
                    if (nameCon.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Enter the name",
                        toastLength: Toast.LENGTH_SHORT,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } else {
                      Navigator.pushReplacementNamed(context, MyRouter.amount);
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
