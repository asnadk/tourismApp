import 'package:flutter/material.dart';

class postAppbar extends StatelessWidget {
  const postAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){Navigator.pop(context);},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 6,

                  )
                ]
              ),
              child: const Icon(
                Icons.arrow_back,
                size: 28,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,blurRadius: 6,
                  )
                ]
              ),
              child: const Icon(Icons.favorite,color: Colors.redAccent,size: 28,),
            ),
          )
        ],
      ),
      );

  }
}