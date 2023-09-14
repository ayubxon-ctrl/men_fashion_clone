import 'package:flutter/material.dart';

class FeaturedPage extends StatefulWidget {
  const FeaturedPage({super.key});

  @override
  State<FeaturedPage> createState() => _FeaturedPageState();
}

class _FeaturedPageState extends State<FeaturedPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Au Noir Shirts | 2023 Spring / Summer",
            style: TextStyle(fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "View All",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ),
        scrollwidget("Au Noir Shirts Phakua", "201 234 123 so'm", "Fusichua",
            'https://www.menfashion.com/cdn/shop/collections/Au-Noir-Log_800x.jpg?v=1610942878'),
        kattarasm("ONLY TH FINISHEST",
            'https://aunoir.shop/cdn/shop/products/chemise-blondel-white-pink-820371.jpg?height=1200&v=1683760132'),
        const Padding(
          padding: EdgeInsets.all(2.0),
          child: Column(
            children: [
              Text(
                "Long Sleevs Shirts",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                "View All",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          ),
        ),
        scrollwidget("Abu Noir Streach Shirt", "2 123 400 so'm", 'Navy',
            'https://jimsclothescloset.ca/wp-content/uploads/2015/07/AuNoir.jpg'),
        const Divider(
          thickness: 1,
        ),
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Text("Designer Polo Shirts For Men"),
        ),
        scrollwidget('Au Noir Streach', "1 871 000 so'm ", "Short Sleeve Polos...",
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLH_4otR1QAe7F-TyYOUIjYaVnI49fgOZ24Q&usqp=CAU'),
        Divider(
          thickness: 1,
        ),
        stack(
            image:
                'https://chicselect.ca/wp-content/uploads/2018/03/AuNoir-MARTIN_blue_FRANCISCO_white.jpg',
            title: "DESIGNER SWIMMER FOR MEN SWIMMER",
            buttontext: 'SHOP NOW'),
        const Padding(
          padding: EdgeInsets.all(6.0),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Designer  Shorts ",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        scrollwidget("Abu Noir Strech Short", "1 166 000 so'm", 'Solaris Willd Grey',
            'https://www.menfashion.com/cdn/shop/files/shorts-solaris-wildwood-grey-855512_1024x1024_50ebb35c-187e-4d73-9f1d-c935693a56dd_grande.jpg?v=1688592819'),
        const Divider(
          thickness: 4,
          color: Colors.black,
        ),
        const Padding(
          padding: EdgeInsets.all(
            4.0,
          ),
          child: Text(
            'SHOP BY BRENDS',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const Divider(thickness: 4, color: Colors.black),
        stack(
            image:
                'https://vvog.ca/cdn/shop/files/homepage_carre_au_noir_VVOG_1200x.jpg?v=1677832359',
            title: '',
            buttontext: 'MEN FASHION BREND'),
        scrollwidget(
            'Bertigo long-sleeve shirt|',
            '1 883 000',
            'Josityr-18 Tropical',
            'https://jimsclothescloset.ca/wp-content/uploads/sb-instagram-feed-images/348300765_242295418393095_4723023208944893563_nfull.jpg'),
        stack(
            image:
                'https://vvog.ca/cdn/shop/files/Au_Noir_web_slide_1000_x_1400_px.jpg?v=1677859135&width=3000',
            title: 'Design Swimmer for Men Swimmer',
            buttontext: 'SHOP NOW'),
        SizedBox(
          height: 4,
        ),
        stack(
            image:
                'https://www.esco.ca/cdn/shop/files/AUNOIR-1400x1400_095de9a5-fb8c-43b5-8a57-3fc55fc09dd1_1000x1000.jpg?v=1664291101',
            title: "MACEO SHIRTS",
            buttontext: "SHOP NOW"),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("MaceO Sirts | Designed In Paris &San Diego inspired"),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: scrollwidget('Masuto Shirt|', '1 646 000', 'Monaco-92',
              'https://images4.sportpursuit.info/media/catalog/product/cache/1/image/800x800/040ec09b1e35df139433887a97daa66f/g/b/gb01824007_noir_1200x1200.webp'),
        ),
        kattarasm('Miami Vibes',
            'https://vvog.ca/cdn/shop/files/Frank_Lyman_1000_x_800_px_1000_x_1000_px_1000x.jpg?v=1678476291'),
        const Divider(
          thickness: 3,
        ),
        const Text("Masuto Shits |  2023 Spring / Summer"),
        scrollwidget("Masutto Shirts", "2 227 000", 'Monaco-56',
            'https://www.georgeharrison.co.nz/images/thumbs/0016763_au-noir-filo-cotton-black-short-sleeve-shirt_870.jpeg'),
        stack(
            image:
                'https://www.saratogasaddlery.com/cdn/shop/products/Au-Noir-Sports-Coats-light-blue-veston-craig-light-blue-331735_1800x1800_a5e1973e-80bf-45d6-9a01-bd78a6f454aa_large.jpg?v=1688248090',
            title: 'Discover Now   Au Noir Suits Collection ',
            buttontext: "ShOP NOW"),
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Au Noir Suit Separate Collection',
          ),
        ),
        const Text(
          'View All',
        ),
        const SizedBox(
          height: 20,
        ),
        url(),
        const SizedBox(height: 15),
        elevatedbutton("RETURNS"),
        elevatedbutton("SHIPPING"),
        elevatedbutton("SIZE SHIRTS"),
      ]),
    );
  }
// Wedgetlar jamlanmasi

  Widget kattarasm(String title, String image) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            height: 415,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 23),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Muslim body Jamiat Ulama-i-Hind has moved to the"
            "Supreme Court seeking directions for rehabilitation of t"
            "hose whose homes were razed by authorities in the Nuh district of Haryana in the past fe"
            "w days after six people were killed in communal violence in the state.Muslim body moves "
            "to Supreme court for rehabilitation of people from razed houses in Nuh",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
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
                    style:const TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    title2,
                    style:const TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            );
          },
        ),
      ),
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
                "",
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
                '',
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
                '',
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
    return Stack(
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
    );
  }
}
Widget elevatedbutton(String text) {
  return Column(
    children: [
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(420, 35), backgroundColor: Colors.black),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          )),
      const SizedBox(height: 18),
    ],
  );
}
