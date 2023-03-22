import 'package:flutter/material.dart';
import 'package:inline_dropdown/dropdown_page.dart';

void main() {
  runApp(const DropDownRD());
}

class DropDownRD extends StatelessWidget {
  const DropDownRD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inline Dropdown Research'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: const DropDownPage()
        ),
      ),
    );
  }
}
