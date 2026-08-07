import 'package:flutter/material.dart';

import '../../models/challenge_model.dart';



class ChallengeCard extends StatelessWidget {


  final ChallengeModel challenge;
  final VoidCallback? onTap;



  const ChallengeCard({

    super.key,

    required this.challenge,

    this.onTap,

  });



  @override
  Widget build(BuildContext context) {


    return Card(

      margin: const EdgeInsets.only(bottom:15),


      child: ListTile(


        onTap: onTap,


        leading: Text(

          challenge.icon,

          style: const TextStyle(

            fontSize:35,

          ),

        ),


        title: Text(

          challenge.title,

          style: const TextStyle(

            fontWeight: FontWeight.bold,

          ),

        ),


        subtitle: Text(

          challenge.location,

        ),


        trailing: Text(

          "+${challenge.points}",


          style: const TextStyle(

            color: Colors.green,

            fontWeight: FontWeight.bold,

          ),

        ),


      ),

    );


  }


}