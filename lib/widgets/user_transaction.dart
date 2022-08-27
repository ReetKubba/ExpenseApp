import 'package:expensapp/new_transaction.dart';
import 'package:flutter/material.dart';
import '../../widgets/transaction_list.dart';
import 'package:expensapp/models/transaction.dart';
import '../new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransactions> {
  var _addNewTransaction;
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
