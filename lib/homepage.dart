import 'package:flutter/material.dart';
import 'package:tourism_app/HomeAppBar.dart';

import 'package:tourism_app/postpage.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
var places=[
  'india',
  'china',
  'america',
  'swiserland',
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
    'https://c4.wallpaperflare.com/wallpaper/758/323/699/nature-scenery-beautiful-mountain-wallpaper-wallpaper-preview.jpg',
    'https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg',
    'https://wallpapers.com/images/featured/beautiful-scenery-wnxju2647uqrcccv.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjqCY8GaL23LlFtUtG2COsq7F2ZhuzS-UrMMXqAhpJIL-_5QhYFcuCwKWPWsD6pvPpaPI&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj6jrVbuTaa4uI310jal2oPp3rgO8GMO5Mc6isdCteNVmV5ovVboUSIUYSGT2bbjjlxt0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRZ_ibb4FGZAR21ywSbf0wXnvgJHV3hTLXontm0noMV5fA0r5vyx7Eqg0T64VC4_fVQGk&usqp=CAU',
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
                                  image:NetworkImage(image[index]),
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
                                  image:NetworkImage(image[index]),
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


  
 