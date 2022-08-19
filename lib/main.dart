import 'package:flutter/material.dart';

import 'home/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'MeuAppTeste',
    home: const HomePage(),
    theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade100),
    debugShowCheckedModeBanner: false,
  ));
}