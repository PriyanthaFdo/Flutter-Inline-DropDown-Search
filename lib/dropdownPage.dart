import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';


class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> _items = [
      'Apple',
      'Banana',
      'Cherry',
      'Durian',
      'Elderberry',
      'Fig',
      'Grape',
      'Honeydew',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Test 1'
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Test 2'
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Test 3'
          ),
        )
      ],
    );
  }
}