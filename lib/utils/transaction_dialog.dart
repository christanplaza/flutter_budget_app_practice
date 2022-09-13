import 'package:flutter/material.dart';
import 'package:flutter_budget_app_practice/boxes.dart';
import 'package:flutter_budget_app_practice/model/transaction.dart';

class TransactionDialog extends StatefulWidget {
  const TransactionDialog({Key? key}) : super(key: key);

  @override
  State<TransactionDialog> createState() => _TransactionDialogState();
}

class _TransactionDialogState extends State<TransactionDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _desc = TextEditingController();

  @override
  Future<void> showInformationDoalog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        String title = '';
        String description = '';
        double amount = 0;

        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              actionsPadding: EdgeInsets.all(16.0),
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _textEditingController,
                      validator: (value) {
                        return value!.isNotEmpty
                            ? null
                            : "Enter the title of your transaction";
                      },
                      decoration: const InputDecoration(
                        hintText: "Transaction Title",
                      ),
                    ),
                    TextFormField(
                      controller: _desc,
                      decoration: const InputDecoration(
                        hintText: "Transaction Description",
                      ),
                    ),
                  ],
                ),
              ),
              title: const Text("Add Transaction"),
              actions: [
                InkWell(
                  child: OutlinedButton(
                    child: Text("Save"),
                    onPressed: () {},
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          },
        );
      },
    );
  }

  addTransaction(
      String title, String description, double amount, bool isExpense) {
    final transaction = Transaction()
      ..title = title
      ..description = description
      ..amount = amount
      ..dateCreated = DateTime.now();

    final box = Boxes.getTransactions();
    box.add(transaction);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await showInformationDoalog(context);
      },
      backgroundColor: Colors.lightBlueAccent,
      child: const Icon(Icons.add),
    );
  }
}
