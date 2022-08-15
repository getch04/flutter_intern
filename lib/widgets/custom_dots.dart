  import 'package:flutter/material.dart';

Widget dots({Color? color}) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
            color: color ?? Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
      ),
    );
  }