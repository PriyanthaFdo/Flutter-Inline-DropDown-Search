import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inline_dropdown/test_object.dart';


class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController typeAheadController = TextEditingController();


    /// Objects created for testing
    TestObject ob1 = TestObject(name: 'test1', value: 1);
    TestObject ob2 = TestObject(name: 'test2', value: 2);
    TestObject ob3 = TestObject(name: 'test3', value: 3);
    TestObject ob4 = TestObject(name: 'test4', value: 4);
    TestObject ob5 = TestObject(name: 'test5', value: 5);
    TestObject ob6 = TestObject(name: 'test6', value: 6);
    TestObject ob7 = TestObject(name: 'test7', value: 7);
    TestObject ob8 = TestObject(name: 'test8', value: 8);
    TestObject ob9 = TestObject(name: 'test9', value: 9);
    TestObject ob10 = TestObject(name: 'test10', value: 10);
    TestObject ob11 = TestObject(name: 'test11', value: 11);
    TestObject ob12 = TestObject(name: 'test12', value: 12);
    TestObject ob13 = TestObject(name: 'test13', value: 13);
    TestObject ob14 = TestObject(name: 'test14', value: 14);
    TestObject ob15 = TestObject(name: 'test15', value: 15);
    TestObject ob16 = TestObject(name: 'test16', value: 16);
    TestObject ob17 = TestObject(name: 'test17', value: 17);
    TestObject ob18 = TestObject(name: 'test18', value: 18);
    TestObject ob19 = TestObject(name: 'test19', value: 19);
    TestObject ob20 = TestObject(name: 'test20', value: 20);

    /// VAriable to store object when selected
    TestObject selectedObject;

    /// Assigning objects to a list
    final List<TestObject> items = [
      ob1, ob2, ob3, ob4, ob5,
      ob6, ob7, ob8, ob9, ob10,
      ob11, ob12, ob13, ob14, ob15,
      ob16, ob17, ob18, ob19, ob20,
    ];

    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
    
          /// Dropdown search field
          TypeAheadFormField(
            textFieldConfiguration: TextFieldConfiguration(
    
              /// Assign a Text controller
              controller: typeAheadController,
              decoration: const InputDecoration(
    
                /// Input 'hint'
                labelText: 'Objects',
              ),
            ),
    
            /// Callback on entering data. (Filter to match enterd text)
            suggestionsCallback: (pattern) {
              return items.where((item) => item.name.toLowerCase().contains(pattern.toLowerCase()));
            },
            itemBuilder: (context, suggestion) {
    
              /// Drop down menu item (Can be modified)
              return Container(
                padding: const EdgeInsets.all(5),
                child: ListTile(
                  leading: const Icon(
                    Icons.add
                  ),
    
                  /// Display value
                  title: Text(suggestion.name),
                ),
              );
            },
    
            /// On item selection
            onSuggestionSelected: (suggestion) {
              typeAheadController.text = suggestion.name;
              selectedObject = suggestion;
              print("${selectedObject.name} - ${selectedObject.value}");
            },
          ),
        ],
      ),
    );
  }
}