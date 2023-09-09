
import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../styles/AppTheme.dart';

class PayBillWidget extends StatefulWidget {
  const PayBillWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PayBillWidgetState();
}

class _PayBillWidgetState extends State<PayBillWidget> {
  final List<AppContact> myNumberList = [
    AppContact(cId: "0", cImage: "assets/nc.png", cType: "Govt. Fees", cNumber: "01712345678", cName: "NID Services"),
    AppContact(cId: "0", cImage: "assets/adc.png", cType: "Govt. Fees", cNumber: "01123456789", cName: "Land Development (LD) Tax"),
    AppContact(cId: "0", cImage: "assets/govt.png", cType: "Govt. Fees", cNumber: "0198765432", cName: "E Porcha(Land)"),
    AppContact(cId: "0", cImage: "assets/city-bank.png", cType: "Credit Card", cNumber: "0179876543", cName: "City Bank AMEX Credit Card Bill "),
    AppContact(cId: "0", cImage: "assets/visa-card.png", cType: "Credit Card", cNumber: "0187654321", cName: "VISA Credit Card Bill"),
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
      backgroundColor: Colors.grey.shade300,
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:5,left: 5,right: 5),
          child: Card(
            child: Column(
              children: [
                const Card(
                  color: Colors.white,

                  ///margin: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
                            child: Text(
                              "Search Organization",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(12, 15, 12, 18),
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                  hintText: "Enter Organization name or type",
                                  hintStyle: TextStyle(color: Colors.black54, fontSize: 12),
                                ),
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
                const Card(
                  color: Colors.white,
                  //margin: const EdgeInsets.all(12),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'My Organization',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Manage(1)',
                            style: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                 Card(
                  //margin: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/nesco.png",
                          height: 50,
                          width: 50,
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                          child: Text(
                                            'electric bill',
                                            style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.start,
                                          ),
                                        )),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                          child: Text(
                                            'Consumer Number: 21021000',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.start,
                                          ),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                          child: Text(
                                            'NESCO Postpaid',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.start,
                                          ),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                          child: Text(
                                            'Last Paid : August, 2023',
                                            style: TextStyle(color: Colors.black38),
                                            textAlign: TextAlign.start,
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                     // margin: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/reciepts-token.png",
                              height: 35,
                              width: 35,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                              child: Text(
                                'Receipts and Tokens ',
                                style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      //margin: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/pay-bill-history.png",
                              height: 35,
                              width: 35,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                  child: Text(
                                    'Pay Bill History',
                                    style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                      'All Organization',
                      style: TextStyle(color: Colors.black45),
                      textAlign: TextAlign.start,
                        ),
                      ),
                      //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                    ],
                  ),
                ),

                GridView(
                  gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  children:   [
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/electricity.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Electricity', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/gas.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Gas', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/water.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Water', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/internet.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Internet', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/telephone.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Telephone', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/tv.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('TV', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/credit-card.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Credit Card', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/govt-fees.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Govt. Fees', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/insurance.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Insurance', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/car.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Trackers', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/other.png",
                              height: 45,
                              width: 45,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Text('Others', style: TextStyle(color: Colors.black54,fontSize: 12),),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: myNumberList.length,
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Card(
                           // margin: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        myNumberList[index].cImage,
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
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              myNumberList[index].cName,
                                                              style: AppTheme.ntitleText,
                                                              textAlign: TextAlign.start,
                                                            ),
                                                            const SizedBox(height: 5,),
                                                            Text(
                                                              myNumberList[index].cType,
                                                              style: const TextStyle(color: Colors.black38),
                                                              textAlign: TextAlign.start,
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            ],
                                          )),

                                    ],
                                  ),
                                ),
                                //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
