import 'package:controller/src/widgets/display_screen/entry_alert_box.dart';
import 'package:controller/src/widgets/display_screen/entry_tile.dart';
import 'package:flutter/material.dart';

class GateScreen extends StatefulWidget {
  final String gateName;

  GateScreen({Key? key, required this.gateName}) : super(key: key);

  @override
  State<GateScreen> createState() => _GateScreenState();
}

class _GateScreenState extends State<GateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gate No ${widget.gateName}"),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, itemCount) {
                return InkWell(
                  onTap: () {
                    _showMyDialog("Person Details");
                  },
                  child: EntryTile("Person No", itemCount + 1),
                );
              }),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(String title) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => EntryAlertDialogBox(title, context),
    );
  }
}
