import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/transaction_item.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    print('build() TransactionList');
    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraint) {
              return Column(
                children: <Widget>[
                  Text(
                    'No transactions added yet!',
                    style: Theme.of(context).textTheme.title,
                  ),
                  // provide spacing between elements
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: constraint.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          )
        : ListView.builder(
            // render list elements lazily using builder insted of creating todos los elementos a la vez
            itemBuilder: (ctx, index) {
              return TransactionItem(
                transaction: transactions[index],
                deleteTx: deleteTx,
              );
            },
            itemCount: transactions.length,
          );
  }
}
