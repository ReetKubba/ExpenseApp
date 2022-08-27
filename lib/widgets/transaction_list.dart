import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:flutter/src/widgets/framework.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  @override
  final List<Transaction> userTransactions;
  var deleteTx;
  TransactionList(this.userTransactions, this.deleteTx);
  Widget build(BuildContext context) {
    return userTransactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                Text(
                  'No Transaction added yet',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 20),
                Container(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset(
                    'lib/blueshoes.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return Transactionitem(
                  userTransactions: userTransactions[index],
                  deleteTx: deleteTx);
            },
            itemCount: userTransactions.length,
          );
  }
}
