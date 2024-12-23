import 'package:flutter/material.dart';

import '../../../../../../../core/resources/asstes_manager.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 26,vertical: 38),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(AsstesManager.logoStart),
            height: 18,),
          Icon(Icons.search_outlined)
        ],
      ),
    );
  }
}
