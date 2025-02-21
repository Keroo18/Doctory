import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {

      // Future.value([
      //   ServicesLocator.curantReservationCubit.getCurantReservation(),
      //   ServicesLocator.articaleCubit.getAllArticale(),
      //   ServicesLocator.clinicCubit.getClinic(),
      //   ServicesLocator.loginCubit.getUnreadNotification(),
      // ]);
      // context.pushReplacementNamed(homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [

            ],
          ),
        ),
        child: Image.asset(
          'assets/images/icons/main_logo.png',
          fit: BoxFit.none,
        ),
      ),
    );
  }
}