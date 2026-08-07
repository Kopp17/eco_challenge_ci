import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/challenge_provider.dart';
import '../../widgets/cards/challenge_card.dart';


class ChallengeScreen extends StatelessWidget {

  const ChallengeScreen({super.key});


  @override
  Widget build(BuildContext context) {


    final challengeProvider =
    Provider.of<ChallengeProvider>(context);



    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Défis écologiques 🌱",
        ),

        centerTitle: true,

      ),



      body: ListView.builder(

        padding: const EdgeInsets.all(16),


        itemCount:
        challengeProvider.challenges.length,


        itemBuilder: (context,index){


          final challenge =
          challengeProvider.challenges[index];


          return ChallengeCard(

            challenge: challenge,


            onTap: (){


              challengeProvider
                  .completeChallenge(
                challenge.id,
              );


              ScaffoldMessenger.of(context)
                  .showSnackBar(

                SnackBar(

                  content: Text(

                    "${challenge.title} terminé +${challenge.points} points 🎉",

                  ),

                ),

              );


            },

          );


        },

      ),

    );

  }

}