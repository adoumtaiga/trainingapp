import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:trainingapp/bank_account.dart';
import 'package:trainingapp/boxes.dart';
class AddPage extends StatefulWidget {
  final String title;
  const AddPage({Key? key, required this.title}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: (){
            _onFormSubmit();
          }, child: const Text('Press Me'),
        ),
      ),

    );
  }

  void _onFormSubmit(){
    Box<BankAccount> bankBox = Hive.box<BankAccount>(HiveBoxes.bank);
    bankBox.add(BankAccount(currency: 'US Dollars', myMoney: 100));
    Navigator.of(context).pop();
    // ignore: avoid_print
    print(bankBox);
  }
}
