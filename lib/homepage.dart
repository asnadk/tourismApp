import 'package:flutter/material.dart';
import 'package:tourism_app/HomeAppBar.dart';

import 'package:tourism_app/postpage.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
var places=[
  'india',
  'china',
  'america',
  'Switzerland',
  'korea',
  'japan',
];

  var categorry =[
    "best places",
    "most visited",
    "fovorite",
    "new added",
    "hotel",
    "resuetorent",
  ];
  
   HomePage({super.key});
   List <String> image =[
    'assets/images/city (1).jpg',
    'assets/images/city (2).jpg',
    'assets/images/city (3).jpg',
    'assets/images/natur2 (3).jpg',
    'assets/images/natur2 (6).jpg',
    'assets/images/natur2 (4).jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize:Size.fromHeight(90.0),
        child: HomeAppBar(),
         ),
         body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child:
                       Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: image.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                      
                          itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen()));
                            },
                            child: Container(
                              width: 160,
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image:  DecorationImage(
                                  image:AssetImage(image[index]),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                              
                                )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: const Icon(Icons.bookmark_border_outlined,
                                    color: Colors.white,
                                    size: 30,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child:  Text(places[index],style: const TextStyle(
                                      color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),

                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                       )),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:const EdgeInsets.all(8),
                      child: Row(children: [
                        for(int i=0; i<6; i++)
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal:10),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ]

                          ),
                          child: Text(
                           categorry[i],
                           style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                          ),
                        )
                      ],)
                       ),

                  ),
                  const SizedBox(height: 10,),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: image.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen()
                              ));
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image:   DecorationImage(
                                  image:AssetImage(image[index]),
                                  fit: BoxFit.cover,
                                  opacity: 0.8,
                                  )
                              ),
                            ),
                          ),
                           Padding(padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(places[index],
                              style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                              ),
                              Icon(Icons.more_vert,size: 30,)
                            ],
                          ),),
                          const SizedBox(height: 5,),
                          const Row(
                            children: [
                              Icon(Icons.star,
                              color: Colors.amber,
                              size: 20,),
                              Text("4,5",style: TextStyle(fontWeight: FontWeight.w500),)
                            ],
                          )
                        ],
                      ),
                      );
                    },
                   )
                ],
              ),
            ),
            )
          ),
 
          );
  }
}


  
 