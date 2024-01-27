import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:sounds/screens/menu.dart';





Widget customListView({

  required String title,
  required String subtitle,
  required String image,

  required void Function() onTap,
}) {
  return Directionality(

    textDirection: TextDirection.rtl,
    child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),

        child: Row(

          children: [
            Stack(

              children: [





                 Padding(
                   padding: const EdgeInsets.only(right: 30),
                   child: Image.asset(
                      "assets/Images/1705306307252.png",
                      width: 50,
                      height: 50,
                    ),
                 ),

              ],
            ),
            const SizedBox(width: 16.0),
            Stack(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.center, children: [


                  Text(
                    title,
                    style: const TextStyle(
                        color:Color(0xf01c0f01),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),




                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: Text(

                    subtitle,
                    style: TextStyle(color: Color(0xf01c0f01).withOpacity(0.5),fontSize: 14.0),
                  ),
                ),
              ], ),
            const Spacer(),


    Padding(
      padding: const EdgeInsets.only(left: 20),





      child:     PopupMenuButton(
iconColor: Color(
    0xf01e0f00).withOpacity (0.8),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),

        ),
        elevation: 4,
        color: Colors.white,
        itemBuilder: (context) =>[
          PopupMenuItem(

            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("المفضلة",style: TextStyle(fontSize: 17,color:Color(
                      0xf01c0f01) ),),
                ),
                Icon(Icons.favorite,color:  Color(
                    0xf01c0f01),),

              ],
            ),
          ),
        ],
      ),


        ),

      ]),

    ),

    ),
  );

}


