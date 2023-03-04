import 'package:controller/src/widgets/custom/custom_display_tile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          CustomDisplayTile("First Name", "Rishin"),
          CustomDisplayTile("Last Name", "Rishin"),
          CustomDisplayTile("Email/Username", "abc@email.com"),
          CustomDisplayTile("Designation", "Role"),
        ],
      ),
    );
  }
}
