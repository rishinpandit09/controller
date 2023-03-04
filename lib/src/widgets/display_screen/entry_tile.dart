import 'package:flutter/material.dart';

Widget EntryTile(String name, int index) {
  return Container(
    height: 80,
    padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
    child: ListTile(
      shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFF616161)),
          borderRadius: BorderRadius.circular(10)),
      title: Text(
        '$name $index',
      ),
      subtitle: const Text('Person description'),
      trailing: const Icon(Icons.more_vert),
      leading: const CircleAvatar(
        backgroundColor: Colors.indigo,
      ),
    ),
  );
}
