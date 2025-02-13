import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/networking/service_locator.dart';
import 'core/utils/app_router.dart';
import 'features/home/presentation/manager/wishlist_cubit/wishlist_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WishlistCubit(),
        ), // 👈 Available app-wide
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          color: Colors.white,
          theme: ThemeData(
            textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
            scaffoldBackgroundColor: Colors.white,
          ),
        );
      },
    );
  }
}
