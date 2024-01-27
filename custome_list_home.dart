
import 'package:flutter/material.dart';
import 'package:share/share.dart';

Widget customListhome({
  required String title,
  required String image,
  required String subtitle,
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
                    color: Colors.white,
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
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),




              ]),
                Padding(
                  padding: const EdgeInsets.only( top: 23),
                  child: Text(

                    subtitle,
                    style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14.0),
                  ),
                ),
              ], ),
            const Spacer(),


            Padding(
              padding: const EdgeInsets.only(left: 20),





     child:     PopupMenuButton(
iconColor: Colors.white,

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
                        InkWell(
                          onTap: () {
                            // Navigator.push(context,MaterialPageRoute(builder: (_) => policy()));
                            Icon(Icons.favorite, color: Color(
                                0xf01c0f01),);

                          }),

                      ],
                    ),
                ),
            ],
     ),





              ),



          ],
        ),
      ),
    ),
  );
}

