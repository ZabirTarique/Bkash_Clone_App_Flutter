
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
          backgroundColor: Colors.white,
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
          bottom:   const TabBar(

            //padding: EdgeInsets.all(8),
            indicatorColor: Colors.pink,
            tabs: [
              Tab( child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_outlined,color: Colors.pink,),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Agent",style: TextStyle(color: Colors.pink),),
                  ),
                ],
              )),
              Tab( child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ad_units,color: Colors.pink,),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("ATM",style: TextStyle(color: Colors.pink),),
                  ),
                ],
              )),
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