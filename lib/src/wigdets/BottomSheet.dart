import 'package:flutter/cupertino.dart';

class BottomSheetMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text("Map"),
              Text("History"),
              Text("Reports"),
              Text("Share"),
            ],
          ),Row(
            children: [
              Text("Notifications"),
              Text("Service Alerts"),
              Text("Parking"),
              Text("near by"),
            ],
          ),
        ],
      ),
    );
  }
}
