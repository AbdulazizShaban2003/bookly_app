import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          image: const DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP._h21wToo6J2pF4lKjoxr1QHaHa?w=235&h=235&c=7&o=5&pid=1.20"),fit: BoxFit.cover ),
        ),
      ),
    );
  }
}
