import 'package:flutter/material.dart';

import '../models/challenge_model.dart';



class ChallengeProvider extends ChangeNotifier {


  final List<ChallengeModel> _challenges = [


    ChallengeModel(

      id: "1",

      title: "Nettoyage Yopougon",

      description: "Ramasser les déchets dans le quartier",

      location: "Yopougon",

      points: 50,

      icon: "🗑️",

    ),



    ChallengeModel(

      id: "2",

      title: "Planter un arbre",

      description: "Participer à la végétalisation d'Abidjan",

      location: "Bingerville",

      points: 100,

      icon: "🌳",

    ),



    ChallengeModel(

      id: "3",

      title: "Réduire le plastique",

      description: "Limiter l'utilisation du plastique",

      location: "Cocody",

      points: 30,

      icon: "♻️",

    ),


  ];



  List<ChallengeModel> get challenges => _challenges;



  void completeChallenge(String id) {


    final index = _challenges.indexWhere(

      (challenge) => challenge.id == id,

    );



    if (index != -1) {


      _challenges[index] =

          _challenges[index].copyWith(

            completed: true,

          );



      notifyListeners();

    }


  }


}