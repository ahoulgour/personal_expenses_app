import 'dart:ui';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: () {
                // print(titleInput);
                // print(amountInput);
                print(titleController.text); // get data from controllers instead
                print(amountController.text);

                addTransaction(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
