import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Image.asset('assets/' + itemArgs.gambar,
                width: double.infinity),
          ),
          Container(
              padding: EdgeInsets.only(left: 8),
              child: Text(itemArgs.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
          Container(
              padding: EdgeInsets.only(left: 8),
              child: Text("Rp. " + itemArgs.price.toString() + ", 00")),
          Container(
              padding: EdgeInsets.all(8), child: Text(itemArgs.description)),
        ],
      ),
    );
  }
}
