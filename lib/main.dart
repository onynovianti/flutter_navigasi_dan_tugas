import 'package:flutter/material.dart';
import 'package:flutter_navigasi_dan_rute/pages/home_page.dart';
import 'package:flutter_navigasi_dan_rute/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
