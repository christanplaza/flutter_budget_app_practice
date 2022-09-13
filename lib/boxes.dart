import 'package:hive/hive.dart';
import 'package:flutter_budget_app_practice/model/transaction.dart';

class Boxes {
  static Box<Transaction> getTransactions() =>
      Hive.box<Transaction>('transactions');
}
