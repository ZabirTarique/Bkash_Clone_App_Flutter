
import 'package:flutter/material.dart';

import '../models/transaction.dart';
import '../styles/AppTheme.dart';
import '../utils/TextUtils.dart';

class ATMWidget extends StatelessWidget {
  const ATMWidget({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
              child: Card(
                color: Colors.white,
                ///margin: EdgeInsets.all(12),
                child: Column(
                  children: [
                    const Text('Please Note',style: TextStyle(color: Colors.black54),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25,8,25,25),
                      child: RichText(
                        text:  const TextSpan(children: [
                          TextSpan(
                              text: 'Enter bKash PIN to get a Security Code that will be used for Cash Out from the partner bank ATM. Security Code will be valid for ',
                              style: TextStyle( color: Colors.black87)
                          ),
                          TextSpan(
                              text: '5 minutes',
                              style: TextStyle(color: Colors.pink))
                        ]),
                      ),
                    ),

                  ],
                ),
              ),
            ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Expanded(
                     flex:1,
                     child: Card(
                       color: Colors.white,
                       //margin: const EdgeInsets.all(12),
                       child: Row(
                         children: [

                           Expanded(
                             flex: 2,
                               child: Icon(Icons.menu_book_rounded,size: 20,color: Colors.pink,)),
                           Expanded(
                             flex: 7,
                             child: Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Text(
                                 'How to Cash Out from ATM',style: TextStyle(color: Colors.pink),),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   Expanded(
                     flex:1,
                     child: Card(
                       color: Colors.white,
                       //margin: const EdgeInsets.all(12),
                       child: Row(
                         children: [

                           Expanded(
                               flex: 2,
                               child: Icon(Icons.account_balance,size: 20,color: Colors.pink,)),
                           Expanded(
                             flex: 7,
                             child: Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Text(
                                 'Partner Banks for ATM Cash Out',style: TextStyle(color: Colors.pink),),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
            const Padding(
              padding: EdgeInsets.only(left: 8,right: 8),
              child: Card(
                color: Colors.white,
                //margin: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.0,20,8,20),
                      child: Text('Available Balance: ৳7500.25 ',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}