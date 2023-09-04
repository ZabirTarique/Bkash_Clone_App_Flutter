import 'package:flutter/material.dart';

class CommonRoundedButton extends StatelessWidget {
   const CommonRoundedButton({
    this.buttonLabel,
     this.onPressed,
     this.iconVisible,
    super.key,
  });

  final String? buttonLabel;
  final GestureTapCallback? onPressed;
  final bool? iconVisible;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation:MaterialStateProperty.all(0),
          backgroundColor:  MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.pink)
              )
          )
      ),
      onPressed: () => onPressed,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Visibility(
            visible: iconVisible!,
              child: const Icon(Icons.qr_code_scanner, color: Colors.pink,)),
          Visibility(
              visible: iconVisible!,
              child: const SizedBox(width: 5,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                buttonLabel!,
                style: const TextStyle(fontSize: 14,color: Colors.pink)
            ),
          ),
        ],
      ),);
  }
}

class DrawerRoundedButton extends StatelessWidget {
  const DrawerRoundedButton({
    this.buttonLabel,
    this.onPressed,
    super.key,
  });

  final String? buttonLabel;
  final GestureTapCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          elevation:MaterialStateProperty.all(0),
          backgroundColor:  MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.pink)
              )
          )
      ),
      onPressed: () => onPressed,
      child:  Text(
          buttonLabel!,
          style: const TextStyle(fontSize: 14,color: Colors.pink)
      ),);
  }
}
