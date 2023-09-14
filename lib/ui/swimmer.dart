import 'package:flutter/material.dart';

class SwimmerPage extends StatefulWidget {
  const SwimmerPage({super.key});

  @override
  State<SwimmerPage> createState() => _SwimmerPageState();
}

class _SwimmerPageState extends State<SwimmerPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: stack(
              image:
                  'https://aunoir.shop/cdn/shop/products/fabrique-au-quebec-lafleur-multi-295103.jpg?v=1664232060',
              title: 'DESIGN SHIRTS FOR MEN LONG SLEEVES',
              buttontext: 'SHOP NOW'),
        ),
        gridview(
            "https://www.menfashion.com/cdn/shop/products/SwimLionPrismBlack_202301080006_1_600x_151bc71c-ebb6-4727-97eb-3f88d3455564_1200x1200.jpg?v=1680805905",
            "Maceoo Swim | Swim Lion",
            'Solid Grey'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Swimmer - Trunk And Shorts",
            style: TextStyle(fontSize: 20),
          ),
        ),
        scrollwidget(
            "Maceoo Swim | Swim Lion Solid",
            "1 165 00,00 so'm",
            "Black",
            'https://cdn.shopify.com/s/files/1/0115/5332/products/SwimLionSolidBlack_202201080021_1copy_600x_64e10381-ba18-4581-b648-d37ff7b71a1e_1200x1200.jpg?v=1680804180'),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 80),
          child: Column(
            children: [
              Row(
                children: [
                  ImageIcon(AssetImage('images/facebook.png')),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'FIND US ON FACEBOOK',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ImageIcon(AssetImage('images/instagram.png')),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'FIND US ON INSTAGRAM',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ImageIcon(AssetImage('images/pinterest.png')),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'FIND US ON PINTEREST ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(420, 35), backgroundColor: Colors.black),
                child: const Text(
                  "RETURNS",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(420, 35), backgroundColor: Colors.black),
                child: const Text(
                  "SHIPPING",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(420, 35), backgroundColor: Colors.black),
                child: const Text(
                  "SIZE CHARTS",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        )
      ]),
    );
  }

  Widget scrollwidget(
      String title1, String price, String title2, String image) {
    return Container(
      height: 330,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                    image,
                    width: 145,
                    height: 245,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 12, color: Colors.black87),
                  ),
                  Text(
                    title1,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    title2,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget stack({
    required String image,
    required String title,
    required String buttontext,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 50,
            child: Container(
              width: 300,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, minimumSize: Size(230, 50)),
              child: Text(
                buttontext,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget gridview(String image1, String title1, String title2) {
    return Container(
      height: 400,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 1, crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                image1,
                width: 120,
                height: 171.4,
              ),
              Text(
                title1,
                style: TextStyle(fontSize: 7),
              ),
              Text(
                title2,
                style: TextStyle(fontSize: 7),
              ),
            ],
          );
        },
      ),
    );
  }
}
