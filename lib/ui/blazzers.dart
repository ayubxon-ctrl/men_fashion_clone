import 'package:flutter/material.dart';

class BlazzersPage extends StatefulWidget {
  const BlazzersPage({super.key});

  @override
  State<BlazzersPage> createState() => _BlazzersPageState();
}

class _BlazzersPageState extends State<BlazzersPage> {
  @override
  Widget build(BuildContext context) {
    return turlixilpagelar(
        title1: 'Abu Noir Stretch Shirt |Kharma',
        title2: "Nuvuvo Black",
        price: '2 107 000',
        image1:
            'https://www.caswellsclothing.com/cdn/shop/products/BARTOLO_midnight_2.jpg?v=1648758783',
        image2:
            'https://cdn3.volusion.com/ba3tg.hs2vg/v/vspfiles/photos/wayne-charcoal-2.jpg?v-cache=1654451318');
  }

  Widget turlixilpagelar({
    required String title1,
    required String title2,
    required String price,
    required String image1,
    required String image2,
  }) {
    return SingleChildScrollView(
      child: Column(children: [
        stack(
            image:
                'https://images.milledcdn.com/2019-03-06/-LZo2tIZdEOrSMae/t4H1mfS9JpCg.jpg',
            title: 'FOR THE STYLE THAT BLAZZREZ',
            buttontext: 'SHOP NOW'),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Fashion Blazzers For A Style That is All Your Own',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
          ),
        ),
        Container(
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
                  const Text(
                    "Maceo Streach Shirt",
                    style: TextStyle(fontSize: 7),
                  ),
                  Text(
                    "Firobaqnic Lionpaisley Black",
                    style: TextStyle(fontSize: 7),
                  ),
                ],
              );
            },
          ),
        ),
        Divider(
          thickness: 4,
        ),
        Container(
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
                    'https://aunoir.shop/cdn/shop/products/blazer-ryan-navy-427794.jpg?v=1666109782',
                    width: 120,
                    height: 171.4,
                  ),
                
                  const Text(
                    "Abu Noir Blazer - Traveler",
                    style: TextStyle(fontSize: 7),
                  ),
                  Text(
                    "Trasparant Pink",
                    style: TextStyle(fontSize: 7),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 20,
        ),

    url(),
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
  Widget url() {
    return const Padding(
      padding:  EdgeInsets.only(left: 80),
      child: Column(
        children: [
          Row(
            children: [
              ImageIcon(AssetImage('images/facebook.png')),
               SizedBox(width: 20),
              Text(
                "FIND US ON FACEBOOK",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 26,),

          Row(
            children: [
              ImageIcon(AssetImage('images/instagram.png')),
               SizedBox(width: 20),
              Text(
                'FIND US ON INSTAGRAM',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 26,),
          Row(
            children: [
              ImageIcon(AssetImage('images/pinterest.png')),
               SizedBox(width: 20),
              Text(
                'FIND US ON PINTEREST',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 26),
        ],
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
}
