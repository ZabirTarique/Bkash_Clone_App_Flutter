import 'package:bkash_clone_app_flutter/widgets/payment_contacts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/contact.dart';
import 'amount_page.dart';
import 'barcode_scanner_page.dart';
import '../styles/AppTheme.dart';
import '../widgets/cashout_contacts_widget.dart';
import '../widgets/common_rounded_button_widget.dart';
import '../widgets/contacts_widget.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final List<AppContact> item = [
  //   AppContact(cId: "0", cImage: "assets/bank_to_bkash.png", cType: "Recents", cNumber: "01123456789", cName: "Bank to bKash"),
  //   AppContact(cId: "0", cImage: "assets/card_to_bkash.png", cType: "Recents", cNumber: "01123456789", cName: "Card to bKash"),
  // ];

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phoneNumberController.text = '+88  01712345678';

    passwordController.text = '<initial value>';
    passwordController.addListener(() {
      setState(() {}); // setState every time text changes
    });
  }
  double getBottomInsets() {
    if (MediaQuery.of(context).viewInsets.bottom >
        MediaQuery.of(context).viewPadding.bottom) {
      return MediaQuery.of(context).viewInsets.bottom -
          MediaQuery.of(context).viewPadding.bottom;
    }
    return 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      Padding(
        padding: EdgeInsets.only(
          bottom: getBottomInsets(),
        ),
        child:  InkWell(
          onTap: () {
            if(phoneNumberController.text == '+88  01712345678' && passwordController.text == '12345'){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const MyHomePage(title: 'bKash')),
              );
            }
          },
          child: Container(
            color: (phoneNumberController.text == '+88  01712345678' && passwordController.text == '12345') ? Colors.pink:Colors.black26,
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Next',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                Icon(Icons.arrow_forward, color: Colors.white)
              ],
            ),
          ),
        ),
      ),

      // appBar: AppBar(
      //   centerTitle: true,
      //   //title: Text(widget.items![0].cType, style: AppTheme.actionBarText, textAlign: TextAlign.center,),
      //   backgroundColor: Colors.white,
      //   actions: [
      //     Expanded(child: DrawerRoundedButton(buttonLabel: "বাংলা", onPressed: (){},)),
      //
      //   ],
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.pink,
                  ),
                  DrawerRoundedButton(
                    buttonLabel: "বাংলা",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/bKash_Logo_icon.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(
                    "assets/qr-code.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8),
              child: Text(
                'Log In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8),
              child: Text('to your bKash account', style: TextStyle(fontSize: 24, color: Colors.black54)),
            ),
             Column(
              children: [
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 8, 12, 4),
                            child: Text(
                              "Account Number",
                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 18),
                              child: TextField(
                                style: const TextStyle(fontWeight: FontWeight.bold),
                                controller: phoneNumberController,
                                keyboardType: TextInputType.number,

                                decoration: const InputDecoration.collapsed(hintText: "Enter name or number", hintStyle: AppTheme.hintText),
                              ),
                            ),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                          //   child: Icon(
                          //     Icons.arrow_forward,
                          //     color: Colors.black45,
                          //   ),
                          // )
                        ],
                      )
                    ],
                  ),
                ),
                 Card(
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 12,right: 12),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(12, 8, 12, 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "bKash PIN",
                                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Forgot PIN?",
                                      style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 18),
                              child: TextField(
                                controller: passwordController,
                                obscureText: true,
                                keyboardType: const TextInputType.numberWithOptions(decimal: true,signed: false),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                                ],
                                style: const TextStyle(fontWeight: FontWeight.bold),
                                //controller: phoneNumberController,
                                decoration: const InputDecoration.collapsed(hintText: "Enter bKash PIN number", hintStyle: AppTheme.hintText),
                              ),
                            ),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                          //   child: Icon(
                          //     Icons.arrow_forward,
                          //     color: Colors.black45,
                          //   ),
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
