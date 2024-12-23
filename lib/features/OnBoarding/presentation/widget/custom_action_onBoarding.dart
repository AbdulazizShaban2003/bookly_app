import 'package:bookly/core/routes/route_helper.dart';
import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/core/theme/colors.dart';
import 'package:bookly/core/theme/styles.dart';
import 'package:bookly/features/OnBoarding/presentation/view/onBoarding_view.dart';
import 'package:bookly/features/auth/presentation/view/login/login_view.dart';
import 'package:flutter/material.dart';

class CustomActionOnBoarding extends StatelessWidget {
  const CustomActionOnBoarding({
    super.key,
    required this.nameButton,
    required this.action,
    required this.countPage,
  });

  final String nameButton;
  final String action;
  final int countPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeManager.widthSize(context, 0.024)),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size.square(SizeManager.heightSize(context, 0.065)),
                backgroundColor: ColorsManager.deepPurpleColor,
                foregroundColor: ColorsManager.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () async{
                if (countPage == listController.length - 1) {
                  showDialog(
                    context: context,
                    builder: (context) => Center(
                      child: CircularProgressIndicator(
                      ),
                    ),
                  );
                  await Future.delayed(Duration(seconds: 1));

                  Navigator.of(context).pop();
                  Navigator.push(context, RouteHelper.navigateTo(LoginView()));
                }
                pageController.nextPage(
                    duration: const Duration(microseconds: 300),
                    curve: Curves.easeInOut);
              },
              child: Text(nameButton, style: TextStylesManager.font20whitebold),
            ),
          ),
          SizedBox(height: SizeManager.heightSize(context, 0.02)),
          TextButton(
            onPressed: () async {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => Center(
                  child: CircularProgressIndicator(
                  ),
                ),
              );
              await Future.delayed(Duration(seconds: 1));

              Navigator.of(context).pop();
              Navigator.push(context, RouteHelper.navigateTo(LoginView()));
            },
            child: Text(
              action,
              style: TextStylesManager.font16black38,
            ),
          ),

        ],
      ),
    );
  }
}
