import 'package:controller/src/screens/gate_screen.dart';
import 'package:controller/src/widgets/display_screen/entry_alert_box.dart';
import 'package:controller/src/widgets/display_screen/entry_tile.dart';
import 'package:flutter/material.dart';

class AdminAllowedGateList extends StatefulWidget {
  AdminAllowedGateList({Key? key}) : super(key: key);

  @override
  State<AdminAllowedGateList> createState() => _AdminAllowedGateListState();
}

class _AdminAllowedGateListState extends State<AdminAllowedGateList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, itemCount) {
            return InkWell(
              onTap: (() => Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return GateScreen(
                      gateName: '${itemCount + 1}',
                    );
                  }))),
              child: EntryTile("Gate No", itemCount + 1),
            );
          }),
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
