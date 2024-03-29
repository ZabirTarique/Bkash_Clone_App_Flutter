
import 'package:bkash_clone_app_flutter/widgets/cashout_widget.dart';
import 'package:flutter/cupertino.dart';
import '../styles/AppText.dart';
import '../widgets/add_money_widget.dart';
import '../widgets/mobile_recharge_widget.dart';
import '../widgets/pay-bill_widget.dart';
import '../widgets/payment_widget.dart';
import '../widgets/send_money_widget.dart';

enum HomeMenu {
  //top menu
  sendMoney('Send Money', 'assets/send_money.jpg', SendMoneyWidget()),
  mobileRecharge('Mobile Recharge', 'assets/mobile_recharge.jpg',MobileRechargeWidget()),   //, Text(AppText.placeholder)
  cashOut('Cash Out', 'assets/cash_out.jpg', CashOutWidget()),
  payment('Payment', 'assets/make_payment.jpg', PaymentWidget()),

  addMoney('Add Money', 'assets/add_money.jpg', AddMoneyWidget()),
  payBill('Pay Bill', 'assets/pay_bill.jpg', PayBillWidget()),
  tickets('Tickets', 'assets/tickets.jpg', Text(AppText.placeholder)),
  more('More', 'assets/more.jpg', Text(AppText.placeholder)),

  //my bKash
  topUps('K.M. Zabir Tarique', 'assets/mobile_recharge.jpg', Text(AppText.placeholder)),
  shwapno('Shwapno', 'assets/make_payment.jpg', PaymentWidget()),
  internet('Internet', 'assets/pay_bill.jpg', Text(AppText.placeholder)),
  card('Card', 'assets/add_money.jpg', Text(AppText.placeholder)),
  account('My Account', 'assets/mobile_recharge.jpg', Text(AppText.placeholder)),

  //suggestions
  btcl('BTCL', 'assets/btcl.jpg', Text(AppText.placeholder)),
  akash('Akash DTH', 'assets/akash.jpg', Text(AppText.placeholder)),
  ajkelDeal('Ajker Deal', 'assets/ajkerdeal.jpg', Text(AppText.placeholder)),
  daraz('Daraz', 'assets/daraz.jpg', Text(AppText.placeholder)),
  styline('Sty Line', 'assets/stiline.jpg', Text(AppText.placeholder)),

  moree('More', 'assets/more.jpg', Text(AppText.placeholder));


  final String title;
  final String icon;
  final Widget widget;

  const HomeMenu(this.title, this.icon, this.widget);
}