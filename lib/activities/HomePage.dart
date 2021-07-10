

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days=32;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
          child:Container(child:Text("teri $days app"))
      ),
      drawer: Drawer(),
    );
  }
}
