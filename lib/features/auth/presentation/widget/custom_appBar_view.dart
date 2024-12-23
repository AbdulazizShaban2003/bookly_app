import 'package:bookly/core/routes/route_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Icon(CupertinoIcons.back,color: Colors.black,),
      ),
    );
  }
}
