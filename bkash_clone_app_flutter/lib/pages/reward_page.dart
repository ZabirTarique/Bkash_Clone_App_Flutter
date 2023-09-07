
import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../styles/AppTheme.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('bKash Rewards', style: AppTheme.actionBarText, textAlign: TextAlign.center,),
        backgroundColor: Colors.pink,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 12.0, bottom: 12.0),
            child: SizedBox(
                width: 34, height: 34, child: Image.asset('assets/logo.png')),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:5,left: 5,right: 5),
          child: Card(
            child: Column(
              children: [
                 Card(
                  color: Colors.yellow.shade800,
                  child:   Column(

                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 4,
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 12, 12, 0),
                            child: Text(
                              "K.M. Zabir Tarique",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          )),
                          Expanded(
                            flex: 2,
                              child: SizedBox()),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      "✪ ",
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                                    ),
                                    Text(
                                      "3364 Points",
                                      style: TextStyle(color: Colors.white,),
                                    ),
                                  ],
                                ),
                              )),

                        ],
                      ),
                      const SizedBox(height: 25,),
                      const Text(
                        "Gold",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 250,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.lime.shade50,
                            borderRadius: BorderRadius.circular(10),
                            //color: Colors.white54,
                            minHeight: 10,
                            value: .3,
                          ),
                        ),
                      ),
                      const Text(
                        "Using available points will not affect the level progression",
                        style: TextStyle(color: Colors.white,fontSize: 11),
                      ),
                      const SizedBox(height: 50,),
                    ],
                  ),
                ),
                const Card(
                  color: Colors.white,
                  //margin: const EdgeInsets.all(12),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "✪ ",
                            style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'bKash Rewards',
                              style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'View All',
                              style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
                            ),
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
                        Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          alignment: Alignment.center,
                          child:   CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.teal.shade700,
                            child: const Text('Cash Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),textAlign: TextAlign.center,),
                          ),
                        ),

                         Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "BDT 50 Cashback on BDT 200 or more Mobile Recharge",
                                                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "5000 Points",
                                                style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                      flex: 1,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation:MaterialStateProperty.all(0),
                                            backgroundColor:  MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18.0),
                                                    side:  const BorderSide(color: Colors.pink)
                                                )
                                            )
                                        ),
                                        onPressed: () {},
                                        child:  const Text(
                                            'Claim',
                                            style: TextStyle(fontSize: 14,color: Colors.pink)
                                        ),),
                                    )

                                  ],
                                ),
                              ],
                            )),
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
                        Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          alignment: Alignment.center,
                          child:   CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.teal.shade700,
                            child: const Text('Cash Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),textAlign: TextAlign.center,),
                          ),
                        ),

                        Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "BDT 60 Cashback on BDT 500 or more Pay Bill",
                                                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "5000 Points",
                                                style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                      flex: 1,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation:MaterialStateProperty.all(0),
                                            backgroundColor:  MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18.0),
                                                    side:  const BorderSide(color: Colors.pink)
                                                )
                                            )
                                        ),
                                        onPressed: () {},
                                        child:  const Text(
                                            'Claim',
                                            style: TextStyle(fontSize: 14,color: Colors.pink)
                                        ),),
                                    )

                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                const Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.history,color: Colors.pink,),
                            SizedBox(width: 5,),
                            Text(
                      'Point History',
                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                    ],
                  ),
                ),
                Card(
                  //margin: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          alignment: Alignment.center,
                          child:   CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.teal.shade700,
                            child: const Text('Cash Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),textAlign: TextAlign.center,),
                          ),
                        ),

                        Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "BDT 50 Cashback on BDT 200 or more Mobile Recharge",
                                                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "5000 Points",
                                                style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                      flex: 1,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation:MaterialStateProperty.all(0),
                                            backgroundColor:  MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18.0),
                                                    side:  const BorderSide(color: Colors.pink)
                                                )
                                            )
                                        ),
                                        onPressed: () {},
                                        child:  const Text(
                                            'Claim',
                                            style: TextStyle(fontSize: 14,color: Colors.pink)
                                        ),),
                                    )

                                  ],
                                ),
                              ],
                            )),
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
                        Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          alignment: Alignment.center,
                          child:   CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.teal.shade700,
                            child: const Text('Cash Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),textAlign: TextAlign.center,),
                          ),
                        ),

                        Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "BDT 60 Cashback on BDT 500 or more Pay Bill",
                                                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "5000 Points",
                                                style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                      flex: 1,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation:MaterialStateProperty.all(0),
                                            backgroundColor:  MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18.0),
                                                    side:  const BorderSide(color: Colors.pink)
                                                )
                                            )
                                        ),
                                        onPressed: () {},
                                        child:  const Text(
                                            'Claim',
                                            style: TextStyle(fontSize: 14,color: Colors.pink)
                                        ),),
                                    )

                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
