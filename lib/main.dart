import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';
import './models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 19.99,
      date: DateTime.now(),
    ),
  ];

  // String titleInput;
  // String amountInput;
  final titleController =
      TextEditingController(); // connects to the text fields and listens the user input, so no need to implement a function onchange value
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: ListView(
        // para que no salga el warning al abrir el teclado
        children: <Widget>[
          Column(
            // mainAxisAlignment: MainAxisAlignment.start, // default is start so I comment it
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                // usamos Container para poder darle width ya que Column y Card solo expanden segun sus hijos
                width: double.infinity,
                child: Card(
                  color: Colors.amber,
                  child: Text('CHART'),
                ),
              ),
              UserTransactions(),
            ],
          ),
        ],
      ),
    );
  }
}
