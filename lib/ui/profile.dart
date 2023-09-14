import 'package:flutter/material.dart';

import '../home/home_page.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

void openHome(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (_) {
    return HomePage();
  }));
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY BAG"),
        backgroundColor: Colors.grey[200],
      ),
      body: Column(children: [
        const SizedBox(
          height: 100,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your cart is empty",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w400, fontSize: 25),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          "You have no items in your cart ",
          style: TextStyle(color: Colors.grey),
        ),
         Text("at the moment ",style: TextStyle(color: Colors.grey),),

        const SizedBox(
          height: 200,
        ),
        ElevatedButton(
            onPressed: () => openHome(context),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text(
              "Start shopping",
              style: TextStyle(color: Colors.white),
            ))
      ]),
    );
  }
}
