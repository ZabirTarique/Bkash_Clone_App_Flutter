import 'package:barcode_scan2/gen/protos/protos.pb.dart';
import 'package:barcode_scan2/model/android_options.dart';
import 'package:barcode_scan2/model/scan_options.dart';
import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'barcode_scanner_page.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/home_body_widget.dart';
import 'inbox_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  ScanResult scanResult = ScanResult();

  final _aspectTolerance = 0.00;
  //final _numberOfCameras = 0;
  final _selectedCamera = -1;
  final _useAutoFocus = true;
  final _autoEnableFlash = false;

  static const List<Widget> _bottomMenu = <Widget>[
    HomeBodyWidget(),
    InboxPage(title: "Inbox",),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    scanResult = scanResult;
    return Scaffold(

      /*appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(),
      ),*/
      body: _bottomMenu.elementAt(_selectedIndex),
      endDrawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Scan QR',
        elevation: 2.0,
        backgroundColor: Colors.white,
        //onPressed: () { _scan(); },
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScannerPage(title: 'Scan QR',)),
        );},
        child: const Icon(Icons.qr_code, color: Colors.pink, size: 40.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarWidget(onPress: _onItemTapped,),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> _scan() async{
    try {
      final result = await BarcodeScanner.scan(
        options: ScanOptions(
          /*strings: {
            'cancel': _cancelController.text,
            'flash_on': _flashOnController.text,
            'flash_off': _flashOffController.text,
          },*/
          // restrictFormat: selectedFormats,
          useCamera: _selectedCamera,
          autoEnableFlash: _autoEnableFlash,
          android: AndroidOptions(
            aspectTolerance: _aspectTolerance,
            useAutoFocus: _useAutoFocus,
          ),
        ),
      );
      setState(() => scanResult = result as ScanResult);
    } on PlatformException catch (e) {
      setState(() {
        scanResult = ScanResult(
          type: ResultType.Error,
          format: BarcodeFormat.unknown,
          rawContent: e.code == BarcodeScanner.cameraAccessDenied
              ? 'The user did not grant the camera permission!'
              : 'Unknown error: $e',
        );
      });
    }
  }
}