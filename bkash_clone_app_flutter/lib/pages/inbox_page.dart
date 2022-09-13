
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';
import '../widgets/notifications_widget.dart';
import '../widgets/transactions_widget.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Inbox", textAlign: TextAlign.center, style: AppTheme.actionBarText,),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                  width: 34, height: 34, child: Image.asset('assets/logo.png')),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Notifications",),
              Tab(text: "Transactions",),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NotificationWidget(),
            TransactionWidget(),
          ],
        ),
      ),
    );
  }
}