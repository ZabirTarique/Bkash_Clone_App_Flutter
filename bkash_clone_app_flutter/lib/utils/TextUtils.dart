import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

TextStyle getAmtStyle(int code) {
  if(code == 1){
    return AppTheme.tTrxTextGreen;
  }
  else{
    return AppTheme.tTrxTextRed;
  }
}