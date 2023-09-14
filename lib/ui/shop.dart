import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return
     
     SingleChildScrollView(
      child: Column(children: [
       const   Divider(thickness: 2),
        
        stack(
            image:
                'https://cdn.shopify.com/s/files/1/0382/0136/0516/files/Screenshot2023-05-09at13-06-57BlazerCRAIGWhite_540x.png?v=1683814944',
            title: 'SUITS',
            buttontext: 'SHOP NOW'),
        const SizedBox(
          height: 6,
        ),
       const   Divider(thickness: 2),
         
         stack(
            image:
                'https://cdn3.volusion.com/ba3tg.hs2vg/v/vspfiles/photos/redford-black-2.jpg?v-cache=1654451318',
            title: 'JACKETS',
            buttontext: 'SHOP NOW'),
        const SizedBox(
          height: 6,),
       const   Divider(thickness: 2),
        stack(
            image:
                'https://static.fibre2fashion.com/MemberResources/LeadResources/1/2022/4/Seller/22202663/Images/22202663_0_men-swimming-costumes.jpg',
            title: 'SWIMMER',
            buttontext: 'SHOP NOW'),
        const SizedBox(
          height: 6,),
       const   Divider(thickness: 2),
      
        stack(
            image:
                'https://www.basketusa.com/wp-content/uploads/2022/05/nike-pg-6-white-black-DH8447-101-5.jpg',
            title: 'SHOES',
            buttontext: 'SHOP NOW'),
        const SizedBox(
          height: 6,),
       const   Divider(thickness: 2),
      
        stack(
            image:
                'https://www.menfashion.com/cdn/shop/collections/Au-Noir-Log_800x.jpg?v=1610942878',
            title: 'BELTS',
            buttontext: 'SHOP NOW'),
        const SizedBox(
          height: 6,),
       const   Divider(thickness: 2),
      
        stack(
            image:
                'https://www.menfashion.com/cdn/shop/collections/Au-Noir-Log_800x.jpg?v=1610942878',
            title: 'SHORTS',
            buttontext: 'SHOP NOW'),
        const SizedBox(
          height: 6,),
       const   Divider(thickness: 2),
      
        stack(
            image:
                'https://i.pinimg.com/originals/2f/d0/07/2fd0074448b152fdffb502e5e183b5f4.jpg',
            title: 'SHIRTS',
            buttontext: 'SHOP NOW'),
        const SizedBox(
          height: 6,),
       
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
        const SizedBox(height: 15),
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
                    color: Colors.white,
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
