import 'package:bookly/core/resources/asstes_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CustomSocialAuth extends StatelessWidget {
  const CustomSocialAuth({
    super.key, required this.operation,
  });
  final String operation;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.center,
            child: Text(
              "Or $operation with",
              style: TextStyle(fontSize: 20),
            )),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11))),
                  backgroundColor: WidgetStateProperty.all(Colors.white)),
              onPressed: () async{
                await Supabase.instance.client.auth.signInWithOAuth(
                  OAuthProvider.facebook,
                  redirectTo: kIsWeb ? null : 'my.scheme://my-host', // Optionally set the redirect link to bring back the user via deeplink.
                  authScreenLaunchMode:
                  kIsWeb ? LaunchMode.platformDefault : LaunchMode.externalApplication, // Launch the auth screen in a new webview on mobile.
                );

              },
              icon: Image(
                image: AssetImage(AsstesManager.logoFacebook),
                width: 100,
                height: 40,
              ),
            ),
            IconButton(
              style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11))),
                  backgroundColor: WidgetStateProperty.all(Colors.white)),
              onPressed: () {

              },
              icon: Image(
                  image: AssetImage(AsstesManager.logoGoogle),
                  width: 100,
                  height: 40),
            ),
          ],
        ),
      ],
    );
  }
}
