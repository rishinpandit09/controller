import 'package:flutter/material.dart';

Widget EntryAlertDialogBox(String title, BuildContext context) {
  return AlertDialog(
    title: const Text('AlertDialog Title'),
    content: SingleChildScrollView(
      child: ListBody(
        children: const <Widget>[
          Text('This is a demo alert dialog.'),
          Text('Would you like to approve of this message?'),
        ],
      ),
    ),
    actions: <Widget>[
      TextButton(
        child: const Text('Approve'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      TextButton(
        child: const Text('Deny'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}
