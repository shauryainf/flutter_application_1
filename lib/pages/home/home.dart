import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/remote_service.dart';
import 'package:flutter_application_1/widgets/check_in_button.dart';

import '../checked_in/checked_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: button(context, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CheckedInPage()),
          );
          RemoteService().apiCall();
        }, 'Check In'),
      ),
    );
  }
}
