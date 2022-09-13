import 'package:flutter/material.dart';
import 'package:flutter_budget_app_practice/utils/transaction_dialog.dart';
import 'package:flutter_budget_app_practice/utils/wallet_info.dart';
import 'package:hive_flutter/hive_flutter.dart';

import './utils/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _box = Hive.box('wallet');

  void addData() {}

  @override
  void dispose() {
    Hive.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: TransactionDialog(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomBar(),
      body: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: [
            WalletInfo(),
          ],
        ),
      ),
    );
  }
}
