import 'package:flutter/material.dart';

class ShirtsPage extends StatefulWidget {
  const ShirtsPage({super.key});

  @override
  State<ShirtsPage> createState() => _ShirtsPageState();
}

class _ShirtsPageState extends State<ShirtsPage> {
  @override
  Widget build(BuildContext context) {
    return
    
     turlixilpagelar(
              title1: 'Abu Noir Stretch Shirt |Kharma',
              title2: "Nuvuvo Black",
              price: '2 107 000',
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
      child: Column(
        
        children: [
          
            
             Text("Maceoo Shirts  Designed | In Paris"),
          
          Padding(
            padding: const EdgeInsets.only(bottom:30),
            child: Text("& San Diego inparis"),
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: stack(
                image:
                    'https://outfittrends.b-cdn.net/wp-content/uploads/2017/05/men-blue-jeans-outfits.png',
                title: 'DESIGN SHIRTS FOR MEN LONG SLEEVES',
                buttontext: 'SHOP NOW'),
          ),
          const Center(
            child: Text(
              "Long Sleeve Shirts",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Center(
            child: Text(
              "View All",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
         
          stack(image: 'https://cdn.shopify.com/s/files/1/0382/0136/0516/files/Screenshot2023-05-09at13-06-57BlazerCRAIGWhite_540x.png?v=1683814944', title: 'DESIGHN SHIRTS FOR MEN LONG SLEEVERS', buttontext:'SHOP NOW'),
        
        gridview('https://brothersclothingco.com/cdn/shop/products/fabrique-au-quebec-alexander-black-446456_720x.jpg?v=1686930379','Maceo Streach Shirt',"Firobanic Lionpalesly"),
        scrollwidget('Au noir short Sleeve sTReach|', '1 871 000', 'sHIRT cARLOS bLUE mULTI', 'https://brothersclothingco.com/cdn/shop/products/polo-falcon-cabernet-419433_720x.jpg?v=1687213094')
       ,stack(image: 'https://oneidentiti.com/wp-content/uploads/2023/02/black_pose_001.jpg', title: 'Masutto dress shorts', buttontext: 'SHOP NOW')
       ,scrollwidget('Au Noir Shirts Streach |', price, 'Fusicgu  Apple Som', 'https://www.georgeharrison.co.nz/images/thumbs/0016785_au-noir-nash-cotton-abstract-short-sleeve-stretch-polo_530.jpeg')
       ,const  SizedBox(height: 20,),

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
            height: 500,
            width: 400,
        
            child: GridView.builder(
              
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 30, crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      image1,
                      width: 120,
                      height: 200,
                    ),
                    SizedBox(width: 60,),
                   
                     Text(
                      title1,
                      style: TextStyle(fontSize: 12),
                    ),

                    Text(
                      title2,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                );
              },
            ),
          
          );
}
  }
