import 'package:flutter/material.dart';


class StatCard extends StatelessWidget {


  final String title;
  final String value;
  final IconData icon;


  const StatCard({

    super.key,

    required this.title,

    required this.value,

    required this.icon,

  });



  @override
  Widget build(BuildContext context) {


    return Card(

      child: Padding(

        padding: const EdgeInsets.all(16),


        child: Column(

          children: [


            Icon(

              icon,

              color: Colors.green,

              size: 30,

            ),


            const SizedBox(height:10),


            Text(

              value,

              style: const TextStyle(

                fontSize:24,

                fontWeight: FontWeight.bold,

              ),

            ),


            Text(title),


          ],


        ),

      ),

    );


  }


}