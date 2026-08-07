import 'package:flutter/material.dart';


class EcoButton extends StatelessWidget {


  final String text;
  final VoidCallback onPressed;
  final IconData? icon;


  const EcoButton({

    super.key,

    required this.text,

    required this.onPressed,

    this.icon,

  });



  @override
  Widget build(BuildContext context) {


    return SizedBox(

      width: double.infinity,


      child: ElevatedButton.icon(

        onPressed: onPressed,


        icon: Icon(

          icon ?? Icons.eco,

        ),


        label: Text(text),


        style: ElevatedButton.styleFrom(

          padding: const EdgeInsets.symmetric(

            vertical: 15,

          ),


          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(15),

          ),


        ),

      ),

    );


  }


}