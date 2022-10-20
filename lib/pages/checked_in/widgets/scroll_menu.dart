import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  final List<String> items;
  const MyList({Key? key, required this.items}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.items[_selectedIndex],
      items: widget.items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedIndex = widget.items.indexOf(value!);
        });
      },
    );
  }
}
