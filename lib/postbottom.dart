import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
      decoration: const BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("city name,country",style: TextStyle(fontSize: 23,
                    fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,
                        size: 25,),
                        Text("4.5",style: TextStyle(
                          fontWeight: FontWeight.w600),
                          ),
                      ],
                    )
                  ],
                 ),
                 const SizedBox(height: 25,),
                 const Text("Lorem Ipsum adalah text contoh digunakan didalam industri pencetakan "
                  "dan typesetting. Lorem Ipsum telah menjadi text contoh semenjak tahun ke 1500an"
                  "apabila pencetak yang kurang terkenal mengambil sebuah galeri cetak dan merobakanya",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w300
                  ),
                  textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3LLyOtedpKpjyV8zi6vEVD-BWj1DEuhwjag&usqp=CAU",fit: BoxFit.cover,width: 120,height: 90,),
                          )),
                        ),
                        Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network("https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg",fit: BoxFit.cover,width: 120,height: 90,),
                          )),
                        ),
                        Expanded(
                          child:Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 90,
                            margin: const EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLMtwlKioPGkNae0HCsDAhjwuyHh04eL3ZPA&usqp=CAU"),
                                fit: BoxFit.cover,opacity: 0.4 )
                            ),
                            child: const Text(
                             "10+",style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                             ),
                            ),
                          )
                          )
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            )
                          ]
                        ),
                        child: const Icon(Icons.book_outlined,size: 40,),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            )
                          ]
                        ),
                        child: const Text(
                          "book now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ]),
                  )
              ],
            ),
            )
        ],
      ),
    );
  }
}