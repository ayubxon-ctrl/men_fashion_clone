import 'package:flutter/material.dart';

class ClassicPage extends StatefulWidget {
  const ClassicPage({super.key});

  @override
  State<ClassicPage> createState() => _ClassicPageState();
}

class _ClassicPageState extends State<ClassicPage> {
  @override
  Widget build(BuildContext context) {
    return turlixilpagelar(
        title1: 'Abu Noir Classic Dress Shirt - Ultra',
        title2: "Streach Aleksandr Dark Grey - M..",
        price: "2 107 000,00 so'm",
        image1:
            'https://donquichotte.ca/wp-content/uploads/VALENCIA_FLORAL_white_blue.jpg',
        image2:
            'https://sourcingjournal.com/wp-content/uploads/2022/06/marcelo-burlon-county-of-milan-mens-ss23-025.jpeg');
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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: stack(
              image:
                  'https://outfittrends.b-cdn.net/wp-content/uploads/2017/05/men-blue-jeans-outfits.png',
              title: 'DESIGN SHIRTS FOR MEN LONG SLEEVES',
              buttontext: 'SHOP NOW'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'YOUR 365 DAYS STYLE',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
              'receivers actually process the information of verbal texts. In the present state of brain and behaviour research, the specific ways of discourse processing cannot as yet be associated with particular brain processes'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Classic Colllection",
            style: TextStyle(fontSize: 20),
          ),
        ),
        gridview(
            'https://brothersclothingco.com/cdn/shop/products/fabrique-au-quebec-alexander-black-446456_720x.jpg?v=1686930379',
            'Maceo Streach Shirt',
            "Firobanic Lionpalesly"),
        gridview2(
            "https://aunoir.shop/cdn/shop/products/manches-courtes-extensible-wake-navy-507694.jpg?v=1680159427",
            'Au Noir shirt - Ferre dark black'),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Classic Colllection",
            style: TextStyle(fontSize: 20),
          ),
        ),
        scrollwidget(
            'Au noir short Sleeve sTReach|',
            '1 871 000',
            'sHIRT cARLOS bLUE mULTI',
            'https://www.menfashion.com/cdn/shop/products/fabrique-au-quebec-alexander-dark-grey-542362_900x_693fedd6-1f83-40df-9808-cb7a9d576309.jpg?v=1673628448'),
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

  Widget gridview2(String image1, String title1) {
    return Container(
      height: 185,
      child: GridView.builder(
        itemCount: 2,
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
            ],
          );
        },
      ),
    );
  }
}
