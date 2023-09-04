
import 'package:flutter/material.dart';
import '../widgets/notifications_widget.dart';
import '../widgets/transactions_widget.dart';
import 'agent_widget.dart';

class CashOutWidget extends StatefulWidget {
  const CashOutWidget({Key? key}) : super(key: key);


  @override
  State<CashOutWidget> createState() => _CashOutWidgetState();
}

class _CashOutWidgetState extends State<CashOutWidget> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 2,
          automaticallyImplyLeading: false,
          // centerTitle: true,
          // title: const Text("Inbox", textAlign: TextAlign.center, style: AppTheme.actionBarText,),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(top: 12.0, right: 12.0, bottom: 12.0),
          //     child: SizedBox(
          //         width: 34, height: 34, child: Image.asset('assets/logo.png')),
          //   )
          // ],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Agent",icon: Icon(Icons.account_balance_outlined),),
              Tab(text: "ATM",icon: Icon(Icons.ad_units),),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AgentWidget(),
            TransactionWidget(),
          ],
        ),
      ),
    );
  }
}