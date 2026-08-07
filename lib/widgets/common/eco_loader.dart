import 'package:flutter/material.dart';


class EcoLoader extends StatelessWidget {


  const EcoLoader({super.key});


  @override
  Widget build(BuildContext context) {


    return const Center(

      child: CircularProgressIndicator(

        color: Colors.green,

      ),

    );


  }


}