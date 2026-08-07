import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';


class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();

}



class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {

    super.initState();


    Future.delayed(

      const Duration(seconds: 3),

      () {

        if (!mounted) return;


        Navigator.pushReplacementNamed(

          context,

          AppRoutes.home,

        );


      },

    );

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,


          children: [


            const Icon(

              Icons.eco,

              size: 100,

              color: Colors.green,

            ),



            const SizedBox(height:20),



            const Text(

              "EcoChallenge CI",

              style: TextStyle(

                fontSize:28,

                fontWeight:FontWeight.bold,

              ),

            ),



            const SizedBox(height:10),



            const CircularProgressIndicator(

              color: Colors.green,

            ),


          ],

        ),

      ),

    );

  }

}