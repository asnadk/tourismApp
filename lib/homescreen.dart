import 'package:flutter/material.dart';
import 'package:tourism_app/homepage.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
   image: DecorationImage(
    image:NetworkImage("https://i.pinimg.com/236x/5e/8d/5d/5e8d5d8ddb131e27b9a368812e1b318f.jpg"),
    fit: BoxFit.cover,
    opacity: 0.7,
    ),
      ),
      child: Material(
        color: Colors.transparent,
      child: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 65),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Enjoy",style:  TextStyle(
                color: Colors.white,
                fontSize: 35,
                letterSpacing: 1.5,
                fontWeight:FontWeight.bold),),
              const SizedBox(height: 2,),
              Text("the world",style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 35,fontWeight:FontWeight.w400,
                letterSpacing: 1.5)),
              const SizedBox(height: 12,),
               Text("Lorem Ipsum adalah text contoh digunakan didalam industri pencetakan "
                  "dan typesetting. Lorem Ipsum telah menjadi text contoh semenjak tahun ke 1500an"
                  "apabila pencetak yang kurang terkenal mengambil sebuah galeri cetak dan merobakanya" 
                  "menjadi satu buku spesimen. Ia telah bertahan bukan hanya selama lima kurun, tetapi telah",
                  style: TextStyle(color: Colors.white.withOpacity(0.7),letterSpacing: 1.5,fontSize: 16),
                  ),
                  const SizedBox(height: 12,),
                  InkWell(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
                  },
                  child: Ink(
                    padding:const  EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.arrow_forward_ios,
                    color: Colors.black,
                    size:20,
                    )
                  ),
                  )
            ],
          ),
           )
      ),
      )
      )
    );
  }
}