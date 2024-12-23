import 'package:bookly/features/auth/presentation/view/OTPVerification/otp_verify_view.dart';
import 'package:bookly/features/auth/presentation/view/changePassword/change_password_view.dart';
import 'package:bookly/features/home/data/repository/home_imple_repo.dart';
import 'package:bookly/features/home/domain/feature_book_cubit/feature_book_cubit.dart';
import 'package:bookly/features/home/domain/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/splash/presentation/views/Start_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../features/auth/presentation/view/changePassword/submit_chanag_password_view.dart';
import '../features/auth/presentation/view/login/login_view.dart';
import '../features/auth/presentation/view/register/register_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://apeugbzhptvwyabuojcr.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFwZXVnYnpocHR2d3lhYnVvamNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQ2NDkyMjMsImV4cCI6MjA1MDIyNTIyM30.xgdYrheXRSym-Nwrq1TSLzUPihkYL_83bxdjxxMEgPw",
  );
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBookCubit(HomeImpleRepo())..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(HomeImpleRepo()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
              },
            ),
            scaffoldBackgroundColor: Color(0xffFFFFFF),
            appBarTheme: AppBarTheme(color: Color(0xffFFFFFF))),
        home: const StartView(),
      ),
    );
  }
}
