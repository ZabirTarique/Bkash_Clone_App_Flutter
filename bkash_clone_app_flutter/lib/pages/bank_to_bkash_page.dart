import 'package:bkash_clone_app_flutter/widgets/payment_contacts_widget.dart';
import 'package:flutter/material.dart';

import '../models/contact.dart';
import 'amount_page.dart';
import 'barcode_scanner_page.dart';
import '../styles/AppTheme.dart';
import '../widgets/cashout_contacts_widget.dart';
import '../widgets/common_rounded_button_widget.dart';
import '../widgets/contacts_widget.dart';

class BankToBkashWidget extends StatefulWidget {
  const BankToBkashWidget({
    Key? key,
    this.items
  }) : super(key: key);
  final List<AppContact>? items;

  @override
  State<StatefulWidget> createState() => _BankToBkashWidgetState();
}

class _BankToBkashWidgetState extends State<BankToBkashWidget> {
  // final List<AppContact> item = [
  //   AppContact(cId: "0", cImage: "assets/bank_to_bkash.png", cType: "Recents", cNumber: "01123456789", cName: "Bank to bKash"),
  //   AppContact(cId: "0", cImage: "assets/card_to_bkash.png", cType: "Recents", cNumber: "01123456789", cName: "Card to bKash"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.items![0].cType, style: AppTheme.actionBarText, textAlign: TextAlign.center,),
        backgroundColor: Colors.pink,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 12.0, bottom: 12.0),
            child: SizedBox(
                width: 34, height: 34, child: Image.asset('assets/logo.png')),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Card(
        color: Colors.white,
        elevation: 4,
        margin: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const AmountPage(menu: HomeMenu.sendMoney,)),
                        // );
                      },
                      child: Card(
                        margin: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    widget.items![index].cImage,
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                                    child: Text(
                                                      widget.items![index].cName,
                                                      style: AppTheme.ntitleText,
                                                      textAlign: TextAlign.start,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Visibility(
                                    visible: index == 0 ? true : false,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                                      alignment: Alignment.center,
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.pink,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                          ],
                        ),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
