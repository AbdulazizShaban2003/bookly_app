import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/widget/custom_title_view.dart';
import 'package:flutter/material.dart';

class CustomTitleChangePassword extends StatelessWidget {
  const CustomTitleChangePassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitleView(titlePage: "Create new password"),
        SizedBox(
          height: SizeManager.heightSize(context, 0.01),
        ),
        Text(
          "Your new password must be unique from those previously used.",
          style: TextStyle(color: Colors.black38, fontSize: 22),
        ),
      ],
    );
  }
}
