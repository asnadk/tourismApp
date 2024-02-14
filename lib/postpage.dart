import 'package:flutter/material.dart';
import 'package:tourism_app/postappbarPage.dart';
import 'package:tourism_app/postbottom.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image:DecorationImage(image: NetworkImage("https://wallpapers.com/images/featured/beautiful-scenery-wnxju2647uqrcccv.jpg"),
        fit: BoxFit.cover,
        opacity: 0.7,
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(preferredSize:Size.fromHeight(90),
         child: postAppbar()
         ),
         bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}