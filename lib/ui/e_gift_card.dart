import 'package:flutter/material.dart';

class GiftCard extends StatefulWidget {
  const GiftCard({super.key});

  @override
  State<GiftCard> createState() => _GiftCardState();
}

class _GiftCardState extends State<GiftCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: stack(image: 'https://maximusxl.ca/cdn/shop/collections/Banner_image_brand_AUNOIR.jpg?v=1680109241', title: 'Men Fashion Shop', buttontext: 'SHOP E-GIFT-CARD'),
       ),
const Padding(padding: EdgeInsets.all(20),
child: Text(" German example for fully justified (flush left and flush right) text. Generated in Scribus 1.3.5, exported to SVG and edited in Inkscape to convert text to path objects to maintain exact positioning of characters as done in Scribus. Using the following text: „Dies ist ein Blindtext. An ihm lässt sich vieles über die Schrift ablesen, in der er gesetzt ist. Auf den ersten Blick wird der Grauwert der Schriftfläche sichtbar. Dann kann man prüfen, wie gut die Schrift zu lesen ist und wie sie auf den",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
      
        icon('images/facebook.png', 'FIND US ON FACEBOOK'),
        icon('images/instagram.png', 'FIND US ON INSTAGRAM'),
        icon('images/pinterest.png', 'FIND US ON PINTEREST'),
        
        const SizedBox(height: 10),
        Column(
          children: [
            button('returns'),
            button('shipping'),
            button('size charts'),
          ],
        )
      ]),
    );
  }

  Widget button(String text) {
    
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(420, 35), backgroundColor: Colors.black),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }

  Widget icon(String image, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: Column(
        children: [
          Row(
            children: [
           ImageIcon(AssetImage(image)),
              const SizedBox(width: 20),
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 20),
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
