import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/checked_in/widgets/scroll_menu.dart';
import 'package:flutter_application_1/widgets/check_in_button.dart';

class CheckedInPage extends StatelessWidget {
  const CheckedInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyList(items: ['A', 'B', 'C', 'D']),
            const SizedBox(height: 20),
            const Text('YAY! You are checked in'),
            const SizedBox(height: 20),
            button(context, () {}, 'Accept')
          ],
        ),
      ),
    );
  }
}
