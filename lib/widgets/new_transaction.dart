import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  late final Function(String, double) addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(Function(String, double) addTx) {
    this.addTx = addTx;
  }
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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.purple,
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
