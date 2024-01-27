import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:sounds/Detailpage.dart';

import 'package:sounds/components/custome_list_home.dart';
import 'package:sounds/model/Musics.dart';
import 'package:sounds/screens/DrawerScreen.dart';
import 'package:sounds/screens/expert.dart';
import 'package:sounds/screens/lettts.dart';
import 'package:sounds/screens/speak.dart';






class favorite extends StatefulWidget {

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {




  late List<Musics> musics;
  final AudioPlayer audioPlayer = AudioPlayer();


  List<Musics> getMusicsList() {
    return [
      Musics(
        title: "إنـهُ الـنـعـمـةُ العظمى",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/1.m4a",
        subtitle:"الخطب",
      ),
      Musics(
        title: "اسف",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Excerpt/2.m4a",
        subtitle:"مقتطفات",
      ),
      Musics(
        title: "الك احد سوا الله",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Lecuter/1.m4a",
        subtitle:"محاضرات",
      ),
      Musics(
        title: "اختبارات",
        image: "",
        url: "assets/songs/Lecuter/3.m4a",
        subtitle:"محاضرات",
      ),
      Musics(
        title: "اغلى الناس",
        image: "",
        url: "assets/songs/Excerpt/4.m4a",
        subtitle:"مقتطفات",
      ),
      Musics(
        title: "أجمل وصية أب",
        image: "assets/Images/9635541.png",
        url: "assets/songs/Speeches/3.m4a",
        subtitle:"الخطب",
      ),


    ];
  }

  void initState() {
    musics = getMusicsList();
    super.initState();

  }






int index=0;













  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body:Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Color(0xf001423f),
                Color(0xf05dc2bf),
              ]
          ),
        ),
          child: Column(
            children: [
              Container(

                width: 500,
                height: MediaQuery.of(context).size.height /2.2,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,

                  image: DecorationImage(image: AssetImage("assets/Images/٢٠٢٤٠١١٧_٢٠١٣٥١.jpg"),fit: BoxFit.cover,),

                ),


          child: Column(

           children: [

             Padding(
               padding: const EdgeInsets.only(top: 50),
               child: ListTile(
                 leading: Builder(
           builder: (BuildContext context) {
             return  GestureDetector(
               onTap: () {
                 Scaffold.of(context).openDrawer();
               },
               child: Container(
                 width: 80,
                 height: 50,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color:  Color(0xffc7c7c9),
                 ),
                 child: Icon(Icons.menu, color: Colors.grey, size: 30),
               ),
             );
           },
                 ),
                 subtitle:  Padding(
                   padding: const EdgeInsets.only(left: 90),
                   child: Text("لفضيلة الشيخ/فؤاد الثلايا",style: TextStyle(fontWeight: FontWeight.bold,color:  Color(
                       0xf01e0f00),fontSize: 17),),
                 ),
                 title:
                 Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [

               Text("التطبيق الرسمي ",style: TextStyle(color:  Color(
                   0xf01e0f00),),
               ),
             ] ),
               ),
             ),

            
Column(
  children: [
    const SizedBox(height: 60,),
    SizedBox(
      height: 150,

      child: ListView(

        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Card(
child: Stack(

  children: [
    InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (_) => lettts()));
      },
        child: Image.asset("assets/Images/hhh.jpg",fit: BoxFit.cover,height: 200,)),
    Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Center(child: Text("الخطب",style: TextStyle(fontSize: 25,color: Colors.white),),),
    ),
  ],

),

            ),
          ),
          SizedBox(width: 20,),
          Card(
            child: Stack(

              children: [
                InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_) => speak()));
                    },
                    child: Image.asset("assets/Images/iiiii.jpg",fit: BoxFit.cover,height: 200,)),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Center(child: Text("محاضرات",style: TextStyle(fontSize: 25,color: Colors.white),),),
                ),
              ],

            ),

          ),
          SizedBox(width: 20,),
          Card(
            child: Stack(

              children: [
                InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_) => expert(mMusic: musics[index],
                        audioPlayer: audioPlayer,
                        playlist: musics,)));
                    },
                    child: Image.asset("assets/Images/hhh.jpg",fit: BoxFit.cover,height: 200,)),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Center(child: Text("مقتطفات",style: TextStyle(fontSize: 25,color: Colors.white),),),
                ),
              ],

            ),

          ),
        ],
      ),
    ),

  ],
),

                ]),
              ),

SizedBox(height: 20,),
              Expanded(

                child: Container(

                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    // decoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //         colors:[
                    //           Color(0xff027dfd),
                    //           Color(0xff4100E0),
                    //         ]
                    //     ),
                    //
                    // ),
                  child:  Stack(
                      children: [
                        Column(

                          children: [
                            Container(
                             child: Row(

                               children: [

                                 Container(

                                   padding: EdgeInsets.only(right: 40),
                                   child: Text("المفضلة",style: TextStyle(fontSize: 20,color: Colors.white),),
                                 ),
                                 Container(

                                   padding: EdgeInsets.only(right: 230),
                                   child: Text("عرض الكل",style: TextStyle(fontSize: 15,color: Colors.white),),
                                 ),
                               ],
                             ),
                            ),

                            Expanded(
                              child: ListView.builder(
                                itemCount: musics.length,
                                itemBuilder: (context, index) => customListhome(
                                  onTap: () async {
                                    // /////////////////////////////////////
                                    // /////////////////////////////////////
                                    // /////////////////////////////////////

                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Detailpage(
                                        mMusic: musics[index],
                                        audioPlayer: audioPlayer,
                                        playlist: musics,

                                      ),
                                    ));
                                    await audioPlayer.setAsset(musics[index].url);
                                    await audioPlayer.play();

                                    // /////////////////////////////////////
                                    // /////////////////////////////////////
                                    // /////////////////////////////////////
                                  },
                                  title: musics[index].title,
                                  subtitle: musics[index].subtitle,
                                  image: musics[index].image,

                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                ),
                
              ),
            ],


          ),
        ),
        drawer:Drawerscreen(),
      ),

    );

  }
}
