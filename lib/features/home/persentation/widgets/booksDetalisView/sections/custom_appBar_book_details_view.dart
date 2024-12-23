import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarBookDetailsView extends StatelessWidget {
  const CustomAppBarBookDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.xmark)),
        IconButton(
            onPressed: () {}, icon: const Icon(CupertinoIcons.shopping_cart))
      ],
    );
  }
}
