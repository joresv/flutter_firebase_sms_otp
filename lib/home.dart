import 'package:flutter/material.dart';
import 'package:sms_otp/function.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () async {
                await disconnect();
              },
              icon: const Icon(Icons.power))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Phone number: " + (user?.phoneNumber ?? "")),
            Text("Uid: " + (user?.uid ?? ""))
          ],
        ),
      ),
    );
  }
}
