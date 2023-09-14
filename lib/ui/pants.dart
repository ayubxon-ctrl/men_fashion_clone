import 'package:flutter/material.dart';

class PantsPage extends StatefulWidget {
  const PantsPage({super.key});

  @override
  State<PantsPage> createState() => _PantsPageState();
}

class _PantsPageState extends State<PantsPage> {
  @override
  Widget build(BuildContext context) {
    return  turlixilpagelar(
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
          
         

         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: stack(
                image:
                    'https://outfittrends.b-cdn.net/wp-content/uploads/2017/05/men-blue-jeans-outfits.png',
                title: 'DESIGN SHIRTS FOR MEN LONG SLEEVES',
                buttontext: 'SHOP NOW'),
          ),
          
         
          stack(image: 'https://cdn.shopify.com/s/files/1/0382/0136/0516/files/Screenshot2023-05-09at13-06-57BlazerCRAIGWhite_540x.png?v=1683814944', title: 'DESIGHN SHIRTS FOR MEN LONG SLEEVERS', buttontext:'SHOP NOW'),
       const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Text("Pants And Demis",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        ),
        gridview('https://cdn.shopify.com/s/files/1/0382/0136/0516/products/beretta-holland-black-416695_de01e0e8-29b3-414c-bce9-2606ca7dec3f_320x.jpg?v=1666191467','Au Noir Shirts Streach Pant | Wessom',"Afscaw Black"),
        gridview('https://cdn.shopify.com/s/files/1/0357/2016/7557/products/wesson-craig-red-826086_600x.jpg?v=1680116168','Au Noir Shirts Streach Pant | Wessom ',"Creag Pink"),
      
       scrollwidget('Au Noir Shirts Streach Pant | Wessom |', price, 'Craig Green', 'https://kawarthanow.com/wp-content/uploads/2016/11/stylenow-john-roberts-02.jpg')
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
