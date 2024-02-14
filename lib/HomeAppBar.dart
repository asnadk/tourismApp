import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration:  BoxDecoration(
                color: Colors.white,
                boxShadow:const [
                   BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.sort_rounded,
                size: 28,

              ),
            ),

          ),
         const  Row(
          children: [
            Icon(Icons.location_on,
            color: Color.fromARGB(255, 225, 68, 57),
            ),
            Text(
              "New york,USA",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            )
          ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white10,
                boxShadow:const  [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(Icons.search,
              size: 28,),
            ),
          )
         ],
      ),);
  }
}