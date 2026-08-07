import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';
import '../../widgets/buttons/eco_button.dart';
import '../../widgets/cards/stat_card.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "EcoChallenge CI 🇨🇮",
        ),

        centerTitle: true,

      ),



      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),


        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,


          children: [



            Container(

              width: double.infinity,

              padding: const EdgeInsets.all(25),


              decoration: BoxDecoration(

                borderRadius:
                BorderRadius.circular(25),


                color: Colors.green,

              ),



              child: const Column(

                crossAxisAlignment:
                CrossAxisAlignment.start,


                children: [


                  Text(

                    "Un Abidjan plus propre 🌱",

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 26,

                      fontWeight:
                      FontWeight.bold,

                    ),

                  ),



                  SizedBox(height:10),



                  Text(

                    "Chaque geste compte pour protéger notre environnement.",

                    style: TextStyle(

                      color: Colors.white,

                      fontSize:16,

                    ),

                  ),


                ],

              ),

            ),




            const SizedBox(height:25),




            const Text(

              "Nos statistiques",

              style: TextStyle(

                fontSize:22,

                fontWeight:FontWeight.bold,

              ),

            ),




            const SizedBox(height:15),




            Row(

              children: [


                Expanded(

                  child: StatCard(

                    title:"Participants",

                    value:"1250",

                    icon:Icons.people,

                  ),

                ),



                const SizedBox(width:10),



                Expanded(

                  child: StatCard(

                    title:"Défis",

                    value:"340",

                    icon:Icons.eco,

                  ),

                ),


              ],

            ),




            const SizedBox(height:30),




            const Text(

              "Défis près de toi",

              style:TextStyle(

                fontSize:22,

                fontWeight:FontWeight.bold,

              ),

            ),



            const SizedBox(height:15),




            const Text(

              "Découvre les défis écologiques disponibles à Abidjan.",

            ),




            const SizedBox(height:20),




            EcoButton(

              text:"Voir tous les défis",

              icon:Icons.eco,


              onPressed: (){


                Navigator.pushNamed(

                  context,

                  AppRoutes.challenge,

                );


              },


            ),



          ],

        ),

      ),

    );

  }


}