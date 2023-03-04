import 'package:flutter/material.dart';

Widget CustomDisplayTile(String tag, String answer) {
  return Container(
    height: 60,
    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
    child: ListTile(
      shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFF616161)),
          borderRadius: BorderRadius.circular(10)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$tag: ',
          ),
          Text(
            answer,
          ),
        ],
      ),
    ),
  );
}
