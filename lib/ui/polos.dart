import 'package:flutter/material.dart';

class PolosPage extends StatefulWidget {
  const PolosPage({super.key});

  @override
  State<PolosPage> createState() => _PolosPageState();
}

class _PolosPageState extends State<PolosPage> {
  @override
  Widget build(BuildContext context) {
    return  turlixilpagelar(
              title1: 'Abu Noir Stretch Shirt |Kharma',
              title2: "Nuvuvo Black",
              price: '2 107 000',
              image1:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZQpQCxEiXgWBrHivJFOcUPZc5Xe-gkD-jdQ&usqp=CAU',
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
const          SizedBox(
            height: 10,
          ),
         
        
        scrollwidget('Macoo Short Sleeve Polos', '1 871 000', 'Mozarattoe Blue', 'https://fanatics.frgimages.com/florida-panthers/mens-antigua-navy-florida-panthers-nova-polo_pi4806000_ff_4806633-bb615e6e9764b976b808_full.jpg?_hv=2&w=340')
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
