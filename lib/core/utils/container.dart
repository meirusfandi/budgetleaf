import 'package:flutter/material.dart';

extension PaddedWidget on Widget {
  Widget padded([final value = 16]) => Padding(
        padding: EdgeInsets.all(value.toDouble()),
        child: this,
      );

  Widget verticalpadded([final value = 16]) => Padding(
        padding: EdgeInsets.symmetric(vertical: value.toDouble()),
        child: this,
      );

  Widget horizontalpadded(
          [final value = 16]) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: value.toDouble()),
        child: this,
      );
}
