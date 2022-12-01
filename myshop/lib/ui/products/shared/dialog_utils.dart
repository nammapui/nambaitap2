import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool?> showConfirmDialog(BuildContext context, String massage){
  return showDialog(
    context: context,
     builder: (ctx) => AlertDialog(title: const Text('are you sure?'),
     content: Text(massage),
     actions: <Widget>[
    TextButton(
        child: const Text('no'),
        onPressed:() {
        Navigator.of(ctx).pop(false);
      },
    ),
   TextButton(
        child: const Text('yes'),
        onPressed:() {
        Navigator.of(ctx).pop(true);
        },
      ),
    ],
  ),
 );
}