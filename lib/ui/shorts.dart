import 'package:flutter/material.dart';

class ShortsPage extends StatefulWidget {
  const ShortsPage({super.key});

  @override
  State<ShortsPage> createState() => _ShortsPageState();
}

class _ShortsPageState extends State<ShortsPage> {
  @override
  Widget build(BuildContext context) {
             return SingleChildScrollView(
      child: Column(
        
        children: [
          
            
     
     
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: stack(
                image:
                    'https://di2ponv0v5otw.cloudfront.net/posts/2022/01/21/61eb49ae6f6c91699d886f40/s_61eb49ae6f6c91699d886f41.jpeg',
                title: 'DESIGN SHIRTS FOR MEN Shorts',
                buttontext: 'SHOP NOW'),
          ),
          
          const   Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Designer Shorts",
                style: TextStyle(fontSize: 20),
              ),
            ),
          
          gridview('https://cdn.shopify.com/s/files/1/1011/9586/products/BAYLINER-HOGAN_lt_olive_1006_540x.jpg?v=1688074248', 'Au Noir Streach Short |Solaries', 'Wildwood grey'),
const   Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Maceo Shorts Clooection",
                style: TextStyle(fontSize: 20),
              ),
            ),
          
scrollwidget('Au Noir Streach Short |', "1 617 000,00 so'm", 'Catana Wildwood Grey', 'https://www.menfashion.com/cdn/shop/files/shorts-solaris-wildwood-black-449521_1024x1024_8f10a55e-4ece-464b-9049-eab26b22e619_1200x1200.jpg?v=1688405878'),        
    scrollwidget("43qfq3gqg4", "1 234 00,00 so'm", "t5eh5", 'https://cdn.shopify.com/s/files/1/1011/9586/products/SOLARIS-WILWOOD_beige_0989_540x.jpg?v=1688074272')  , 
const  SizedBox(height: 20,),

       const  Padding(
           padding:  EdgeInsets.only(left: 80),
           child: Column(
             children: [
               Row(
                 children: [
                   ImageIcon(AssetImage('images/facebook.png')),
                   SizedBox(width: 20,),
                   Text('FIND US ON FACEBOOK',style: TextStyle(fontWeight: FontWeight.bold),)
                 ],
               ),
               SizedBox(height: 20,),
                              Row(
                 children: [
                   ImageIcon(AssetImage('images/instagram.png')),
                   SizedBox(width: 20,),
                   Text('FIND US ON INSTAGRAM',style: TextStyle(fontWeight: FontWeight.bold),)
                 ],
               ),
               SizedBox(height: 20,),
               
                              Row(
                 children: [
                   ImageIcon(AssetImage('images/pinterest.png')),
                   SizedBox(width: 20,),
                   Text('FIND US ON PINTEREST ',style: TextStyle(fontWeight: FontWeight.bold),)
                 ],
               ),
             ],
           ),
       ),
       
          SizedBox(height: 15,),  

Column(
  children: [
        ElevatedButton(onPressed: (){}, 
    
    style: ElevatedButton.styleFrom(minimumSize: Size(420, 35),backgroundColor: Colors.black),
    
    child: const Text("RETURNS",style: TextStyle(color: Colors.white),)),
       ElevatedButton(onPressed: (){}, 
    
    style: ElevatedButton.styleFrom(minimumSize: Size(420, 35),backgroundColor: Colors.black),
    
    child: const Text("SHIPPING",style: TextStyle(color: Colors.white),)),   ElevatedButton(onPressed: (){}, 
    
    style: ElevatedButton.styleFrom(minimumSize: Size(420, 35),backgroundColor: Colors.black),
    
    child: const Text("SIZE CHARTS",style: TextStyle(color: Colors.white),)),
  ],
)
      
        ]
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


Widget gridview(String image1,String title1,String title2){
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