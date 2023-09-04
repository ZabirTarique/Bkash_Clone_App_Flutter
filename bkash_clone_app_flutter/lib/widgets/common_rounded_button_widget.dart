import 'package:flutter/material.dart';

class CommonRoundedButton extends StatelessWidget {
   const CommonRoundedButton({
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