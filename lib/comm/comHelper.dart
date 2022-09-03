import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

alertDialog(String msg){

  Toast.show(msg, duration: Toast.lengthLong, gravity:  Toast.bottom);
}