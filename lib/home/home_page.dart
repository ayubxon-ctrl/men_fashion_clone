import 'package:flutter/material.dart';

import 'package:menfashion/ui/profile.dart';

import '../ui/Shirts.dart';
import '../ui/blazzers.dart';
import '../ui/classic.dart';
import '../ui/e_gift_card.dart';
import '../ui/featured.dart';
import '../ui/pants.dart';
import '../ui/polos.dart';
import '../ui/shop.dart';
import '../ui/shorts.dart';
import '../ui/swimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (_) {
    return const UsersPage();
  }));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "MENFASHION",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                openPage(context);
                print('Tarmoqqa ulanishi kutilmoqda');
                // do somethng
              },
            )
          ],
          titleSpacing: 12,
          backgroundColor: Colors.black,
          centerTitle: true,
          bottom: TabBar(
              labelColor: Colors.red,
              indicatorColor: Colors.red,
              isScrollable: true,
              unselectedLabelColor: Colors.red[100],
              tabs: const [
                Text("Featured"),
                Text("Shirts"),
                Text("Blazzers"),
                Text("Polos"),
                Text("Pants"),
                Text("Shorts"),
                Text("Swimmers"),
                Text("Classic"),
                Text("Shop"),
                Text("E-Gift-Card"),
              ]),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body:const  TabBarView(children: [
          FeaturedPage(),
          ShirtsPage(),
          BlazzersPage(),
          PolosPage(),
          PantsPage(),
          ShortsPage(),
          SwimmerPage(),
          ClassicPage(),
          ShopPage(),
          GiftCard(),
        ]),
        drawer: const Drawer(),
      ),
    );
  }



}

