import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  late final String text;
  var handler;
  @override
  AdaptiveFlatButton(this.text, this.handler);
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(text),
            //  textColor: Colors.purple,
            onPressed: handler)
        : FlatButton(
            child: Text(text), textColor: Colors.purple, onPressed: handler);
  }
}
