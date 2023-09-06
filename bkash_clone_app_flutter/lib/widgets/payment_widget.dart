import 'package:bkash_clone_app_flutter/widgets/payment_contacts_widget.dart';
import 'package:flutter/material.dart';

import '../models/contact.dart';
import '../pages/barcode_scanner_page.dart';
import '../styles/AppTheme.dart';
import 'cashout_contacts_widget.dart';
import 'common_rounded_button_widget.dart';
import 'contacts_widget.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  final List<AppContact> myNumberList = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01712345678", cName: "K.M. Zabir Tarique"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01123456789", cName: "K.M. Zabir Tarique"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "0198765432", cName: "John Doe"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "0179876543", cName: "Abir Ahmed"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "0187654321", cName: "Kabir Ahmed"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "0132145678", cName: "Sabbir Ahmed"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "0123456789", cName: "John Daniel"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "0177654321", cName: "John Dev"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "0187654921", cName: "Tamim Iqbal"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01341567891", cName: "Mushfiqur Rahim"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01765432189", cName: "Shakib al Hasan"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01777654489", cName: "Mahmudullah Riad"),
  ];

  final List<AppContact> recentList = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Rohit Sharma"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Virat Kohli"),
  ];

  final List<AppContact> allContacts = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Akram Khan"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Sujon"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8,right: 8),
              child: Card(
                color: Colors.white,
                ///margin: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,12,0), child: Text("To", style: AppTheme.ntitleText,),))],),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 15, 12, 18),
                            child: TextField(
                              decoration: InputDecoration.collapsed(hintText: "Enter Merchant number or name", hintStyle: AppTheme.hintText),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Card(
                color: Colors.white,
                //margin: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,8.0,50,8),
                      child: SizedBox(
                        width: 300,
                          child: CommonRoundedButton(buttonLabel: 'Tap To Scan QR Code',onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ScannerPage(title: 'Payment',)),
                            );
                          },iconVisible: true,)),
                    )
                  ],
                ),
            ),
              ),
            Expanded(child: PaymentContactsWidget(list: myNumberList, title: "Payment"))
          ],
        ),
      ),
    );
  }
}
